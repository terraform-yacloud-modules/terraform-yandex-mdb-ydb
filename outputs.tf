output "database_id" {
  description = "ID of the Yandex Database cluster."
  value       = var.database_type == "dedicated" ? yandex_ydb_database_dedicated.dedicated_database[0].id : yandex_ydb_database_serverless.serverless_database[0].id
}

output "database_name" {
  description = "Name of the Yandex Database cluster."
  value       = var.name
}

output "database_endpoint" {
  description = "Full endpoint of the Yandex Database cluster."
  value       = var.database_type == "dedicated" ? yandex_ydb_database_dedicated.dedicated_database[0].ydb_full_endpoint : yandex_ydb_database_serverless.serverless_database[0].ydb_full_endpoint
}

output "database_api_endpoint" {
  description = "API endpoint of the Yandex Database cluster. Useful for SDK configuration."
  value       = var.database_type == "dedicated" ? yandex_ydb_database_dedicated.dedicated_database[0].ydb_api_endpoint : yandex_ydb_database_serverless.serverless_database[0].ydb_api_endpoint
}

output "database_path" {
  description = "Full database path of the Yandex Database cluster. Useful for SDK configuration."
  value       = var.database_type == "dedicated" ? yandex_ydb_database_dedicated.dedicated_database[0].database_path : yandex_ydb_database_serverless.serverless_database[0].database_path
}

output "database_tls_enabled" {
  description = "Whether TLS is enabled for the Yandex Database cluster. Useful for SDK configuration."
  value       = var.database_type == "dedicated" ? yandex_ydb_database_dedicated.dedicated_database[0].tls_enabled : yandex_ydb_database_serverless.serverless_database[0].tls_enabled
}

output "database_status" {
  description = "Status of the Yandex Database cluster."
  value       = var.database_type == "dedicated" ? yandex_ydb_database_dedicated.dedicated_database[0].status : yandex_ydb_database_serverless.serverless_database[0].status
}

output "database_created_at" {
  description = "The Yandex Database cluster creation timestamp."
  value       = var.database_type == "dedicated" ? yandex_ydb_database_dedicated.dedicated_database[0].created_at : yandex_ydb_database_serverless.serverless_database[0].created_at
}
