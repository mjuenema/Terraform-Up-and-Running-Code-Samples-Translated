provider "google" {
  project     = "terraform-up-and-running-code"
  # credentials = GOOGLE_CREDENTIALS
  region = "us-central1"
}

module "webserver_cluster" {
  source = "git@github.com:mjuenema/terraform-up-and-running-code-samples-translated.git//gcloud/code/terraform/04-terraform-module/module-example/modules/services/webserver-cluster?ref=v0.0.1"

  cluster_name           = "webservers-prod"
  db_remote_state_bucket = "net-juenemann-tfstate"
  db_remote_state_path   = "prod/data-stores/mysql/terraform.tfstate"

  instance_type = "f1-micro"
  min_size      = 2
  max_size      = 10
}


resource "google_compute_firewall" "allow_inbound_testing" {
  name    = "allow-inbound-testing"
  network = "default"

  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = [12346]
  }
}
