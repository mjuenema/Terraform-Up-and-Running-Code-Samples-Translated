#
# https://www.terraform.io/docs/providers/google/r/compute_autoscaler.html
#

provider "google" {
  project     = "terraform-up-and-running-code"
  # credentials = GOOGLE_CREDENTIALS
  region = "asia-southeast1"
}

resource "google_compute_address" "example" {
    name = "example-address"
}

resource "google_compute_instance_template" "example" {
  machine_type   = "f1-micro"


  disk {
    source_image = "ubuntu-1604-lts"
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = "echo 'Hello, World' > index.html ; nohup busybox httpd -f -p ${var.server_port} &"
}

resource "google_compute_forwarding_rule" "example" {
  name       = "example-forwarding-rule"
  target     = "${google_compute_target_pool.example.self_link}"
  port_range = "8080"
  ip_address = "${google_compute_address.example.address}"
}

resource "google_compute_target_pool" "example" {
  name = "example-target-pool"
}

resource "google_compute_instance_group_manager" "example" {
  name = "example-group-manager"
  zone = "asia-southeast1-a"

  instance_template  = "${google_compute_instance_template.example.self_link}"
  target_pools       = ["${google_compute_target_pool.example.self_link}"]
  base_instance_name = "example"
}

resource "google_compute_autoscaler" "example" {
  name = "example-autoscaler"
  zone = "asia-southeast1-a"
  target = "${google_compute_instance_group_manager.example.self_link}"

  autoscaling_policy = {
    max_replicas    = 10
    min_replicas    = 2
    cooldown_period = 60

    cpu_utilization {
      target = 0.5
    }
  }
}

resource "google_compute_backend_service" "example" {
  name = "example-backend-service"
  port_name = "http"
  protocol = "HTTP"
  timeout_sec = 10
  enable_cdn = false

  backend {
    group = "${google_compute_instance_group_manager.example.instance_group}"
  }

  health_checks = ["${google_compute_http_health_check.example.self_link}"]
}


resource "google_compute_http_health_check" "example" {
  name                 = "example-health-check"
  request_path         = "/"
  check_interval_sec   = 30
  timeout_sec          = 3
  healthy_threshold    = 2
  unhealthy_threshold  = 2
  port                 = "${var.server_port}"
}


resource "google_compute_firewall" "instance" {
  name    = "example-firewall-instance"
  network = "default"

  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["${var.server_port}"]
  }
}
