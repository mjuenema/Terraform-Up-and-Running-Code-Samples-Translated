provider "google" {
  project     = "terraform-up-and-running-code"
  # credentials = GOOGLE_CREDENTIALS
  region = "us-central1"
}

resource "google_compute_instance" "example" {
  name = "terraform-example"
  machine_type  = "f1-micro"
  zone = "us-central1-a"
  disk {
    image = "ubuntu-1604-lts"
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  tags = ["terraform-example"]

  metadata_startup_script = "echo 'Hello, World' > index.html ; nohup busybox httpd -f -p ${var.server_port} &"
}

resource "google_compute_firewall" "instance" {
  name    = "terraform-example-instance"
  network = "default"

  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["${var.server_port}"]
  }
}
