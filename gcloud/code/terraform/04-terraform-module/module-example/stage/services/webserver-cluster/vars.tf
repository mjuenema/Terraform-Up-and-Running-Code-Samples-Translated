# See Notes in README.md
variable "db_remote_state_bucket" {
  description = "The name of the Google Cloud Storage bucket used for the database's remote state storage"
  default = "state_bucket"
}

variable "db_remote_state_path" {
  description = "The name of the path in the Google Cloud Storage bucket used for the database's remote state storage"
  default = "stage/data-stores/mysql/terraform.tfstate"
}
