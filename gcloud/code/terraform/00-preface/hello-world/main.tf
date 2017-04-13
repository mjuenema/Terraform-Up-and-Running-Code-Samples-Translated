provider "google" {
  project     = "terraform-up-and-running-code"
  # credentials = GOOGLE_CREDENTIALS
  region = "asia-southeast1"
}

resource "google_compute_instance" "example" {
  name = "example"
  machine_type  = "n1-standard-1"
  zone = "asia-southeast1-a"
  disk {
    image = "ubuntu-1610-yakkety-v20170330"
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
