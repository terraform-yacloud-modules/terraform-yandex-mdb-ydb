variable "name" {
  description = "Name of the Yandex Database serverless instance"
  type        = string
  default     = "ydb-serverless-example"
}

variable "folder_id" {
  description = "The ID of the Yandex Cloud Folder that the resources belongs to"
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "Inhibits deletion of the database"
  type        = bool
  default     = false
}

variable "description" {
  description = "A description for the Yandex Database cluster"
  type        = string
  default     = "Serverless YDB example instance"
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the Yandex Database cluster"
  type        = map(string)
  default = {
    environment = "test"
    created_by  = "terraform"
  }
}

variable "serverless_database_path" {
  description = "Path for the serverless database"
  type        = string
  default     = null
}

variable "serverless_database_location_id" {
  description = "Location ID for the serverless database"
  type        = string
  default     = "ru-central1"
}

variable "serverless_database_ydb_full_endpoint" {
  description = "Full endpoint for the serverless database"
  type        = string
  default     = null
}

variable "serverless_database_ydb_api_endpoint" {
  description = "API endpoint for the serverless database"
  type        = string
  default     = null
}