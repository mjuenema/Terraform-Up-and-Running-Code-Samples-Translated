variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 8080
}

variable "db_remote_state_bucket" {
  description = "The name of the Google Cloud Storage bucket used for the database's remote state storage"
}

variable "db_remote_state_path" {
  description = "The name of the key in the Google Cloud Storage bucket used for the database's remote state storage"
}
