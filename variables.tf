variable "database_type" {
  description = "Type of the Yandex Database to create (dedicated or serverless)"
  type        = string
}

variable "name" {
  description = "Name of the Yandex Database cluster"
  type        = string
}

variable "folder_id" {
  description = <<EOF
    (Optional) The ID of the Yandex Cloud Folder that the resources belongs to.

    Allows to create bucket in different folder.
    It will try to create bucket using IAM-token in provider config, not using access_key.
    If omitted, folder_id specified in provider config and access_key is used.
  EOF
  type        = string
  default     = null
}

variable "network_id" {
  description = "ID of the network to attach the Yandex Database cluster to (only for dedicated)"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "Set of subnet IDs to attach the Yandex Database cluster to (only for dedicated)"
  type        = set(string)
  default     = null
}

variable "resource_preset_id" {
  description = "The Yandex Database cluster preset (only for dedicated)"
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "Inhibits deletion of the database"
  type        = bool
  default     = false
}

variable "fixed_scale_size" {
  description = "Number of instances for the Yandex Database cluster (only for dedicated)"
  type        = number
  default     = 1
}

variable "storage_group_count" {
  description = "Amount of storage groups of selected type for the Yandex Database cluster (only for dedicated)"
  type        = number
  default     = 1
}

variable "storage_type_id" {
  description = "Storage type ID for the Yandex Database cluster (only for dedicated)"
  type        = string
  default     = "ssd"
}

variable "region_id" {
  description = "Region ID for the Yandex Database cluster (only for dedicated)"
  type        = string
  default     = "ru-central1"
}

variable "location_id" {
  description = "Location ID for the Yandex Database cluster (alternative to region block)"
  type        = string
  default     = null
}

variable "description" {
  description = "A description for the Yandex Database cluster"
  type        = string
  default     = null
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the Yandex Database cluster"
  type        = map(string)
  default     = {}
}

variable "security_group_ids" {
  description = "A set of security group IDs to attach to the dedicated YDB cluster"
  type        = set(string)
  default     = []
}

variable "assign_public_ips" {
  description = "Whether public IP addresses should be assigned to the Yandex Database cluster"
  type        = bool
  default     = false
}

variable "sleep_after" {
  description = "Delay after creation before proceeding with further operations"
  type        = number
  default     = null
}

variable "scale_policy" {
  description = "Scaling policy for the Yandex Database cluster. Can be either `fixed_scale` or `auto_scale`"
  type        = any
  default     = null
}

variable "timeouts" {
  description = "Timeout configuration for create, update, and delete operations"
  type        = string
  default     = null
}
