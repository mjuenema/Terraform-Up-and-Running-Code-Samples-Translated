output "address" {
  value = "${google_sql_database_instance.example.ip_address.0.ip_address}"
}
