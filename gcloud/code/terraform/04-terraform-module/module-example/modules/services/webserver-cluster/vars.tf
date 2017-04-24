variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 8080
}


variable "cluster_name" {
  description = "The name to use for all the cluster resources"
}


variable "db_remote_state_bucket" {
  description = "The name of the Google Cloud Storage bucket used for the database's remote state storage"
}


variable "db_remote_state_path" {
  description = "The name of the key in the Google Cloud Storage bucket used for the database's remote state storage"
}


variable "instance_type" {
  description = "The type of Google Compute Engine Instances to run (e.g. f1-micro)"
}


variable "min_size" {
  description = "The minimum number of Google Compute Engine Instances in the Autoscaler"
}


variable "max_size" {
  description = "The maximum number of Google Compute Engine Instances in the Autoscaler"
}
