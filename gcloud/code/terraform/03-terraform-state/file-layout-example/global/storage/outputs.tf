output "storage_bucket_self_link" {
  value = "${google_storage_bucket.terraform_state.self_link}"
}
