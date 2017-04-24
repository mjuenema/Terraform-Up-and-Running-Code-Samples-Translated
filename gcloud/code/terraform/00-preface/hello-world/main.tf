provider "google" {
  project     = "terraform-up-and-running-code"
  # credentials = GOOGLE_CREDENTIALS
  region = "us-central1"
}

resource "google_compute_instance" "example" {
  name = "example"
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
}
