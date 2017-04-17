provider "google" {
  project     = "terraform-up-and-running-code"
  # credentials = GOOGLE_CREDENTIALS
  region = "asia-southeast1"
}

resource "google_compute_instance" "example" {
  name = "terraform-example"
  machine_type  = "f1-micro"
  zone = "asia-southeast1-a"
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
}
