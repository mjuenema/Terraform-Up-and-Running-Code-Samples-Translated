provider "google" {
  project     = "terraform-up-and-running-code"
  # credentials = GOOGLE_CREDENTIALS
  region = "us-central"
}

resource "google_storage_bucket" "terraform_state" {
  name     = "${var.bucket_name}"
}
