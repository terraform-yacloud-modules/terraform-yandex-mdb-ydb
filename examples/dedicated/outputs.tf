output "database_id" {
  description = "ID of the Yandex Database cluster."
  value       = module.ydb.database_id
}

output "database_name" {
  description = "Name of the Yandex Database cluster."
  value       = module.ydb.database_name
}

output "database_endpoint" {
  description = "Full endpoint of the Yandex Database cluster."
  value       = module.ydb.database_endpoint
}

output "database_api_endpoint" {
  description = "API endpoint of the Yandex Database cluster. Useful for SDK configuration."
  value       = module.ydb.database_api_endpoint
}

output "database_path" {
  description = "Full database path of the Yandex Database cluster. Useful for SDK configuration."
  value       = module.ydb.database_path
}

output "database_tls_enabled" {
  description = "Whether TLS is enabled for the Yandex Database cluster. Useful for SDK configuration."
  value       = module.ydb.database_tls_enabled
}

output "database_status" {
  description = "Status of the Yandex Database cluster."
  value       = module.ydb.database_status
}

output "database_created_at" {
  description = "The Yandex Database cluster creation timestamp."
  value       = module.ydb.database_created_at
}
