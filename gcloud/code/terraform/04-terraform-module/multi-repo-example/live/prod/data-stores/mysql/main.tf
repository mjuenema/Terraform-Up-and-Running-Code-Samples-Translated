provider "google" {
  project     = "terraform-up-and-running-code"
  # credentials = GOOGLE_CREDENTIALS
  region = "us-central1"
}


terraform {
  backend "gcs" {}
}


resource "google_sql_database_instance" "example" {
  region = "us-central1"
  settings {
    tier = "db-f1-micro"
    disk_size = "10"
  }
}


resource "google_sql_database" "example" {
  name     = "example-database-prod"
  instance = "${google_sql_database_instance.example.name}"
  # I experienced problems when "google_sql_user" runs in parallel
  depends_on = ["google_sql_user.admin"]
}


resource "google_sql_user" "admin" {
  name     = "admin"
  instance = "${google_sql_database_instance.example.name}"
  host     = "1.2.3.4"
  password = "${var.db_password}" 
}
