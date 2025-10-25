data "yandex_client_config" "client" {}

resource "yandex_ydb_database_dedicated" "dedicated_database" {
  count               = var.database_type == "dedicated" ? 1 : 0
  name                = var.name
  network_id          = var.network_id
  subnet_ids          = var.subnet_ids
  resource_preset_id  = var.resource_preset_id
  deletion_protection = var.deletion_protection
  description         = var.description
  labels              = var.labels
  folder_id           = local.folder_id
  security_group_ids  = var.security_group_ids
  assign_public_ips   = var.assign_public_ips

  scale_policy {
    dynamic "fixed_scale" {
      for_each = try(local.scale_policy_config.fixed_scale, null) != null ? [local.scale_policy_config.fixed_scale] : []
      content {
        size = fixed_scale.value.size
      }
    }

    dynamic "auto_scale" {
      for_each = try(local.scale_policy_config.auto_scale, null) != null ? [local.scale_policy_config.auto_scale] : []
      content {
        min_size = auto_scale.value.min_size
        max_size = auto_scale.value.max_size
        target_tracking {
          cpu_utilization_percent = auto_scale.value.target_tracking.cpu_utilization_percent
        }
      }
    }
  }

  storage_config {
    group_count     = var.storage_group_count
    storage_type_id = var.storage_type_id
  }

  location {
    region {
      id = var.region_id
    }
  }
}

resource "yandex_ydb_database_serverless" "serverless_database" {
  count               = var.database_type == "serverless" ? 1 : 0
  name                = var.name
  deletion_protection = var.deletion_protection
  description         = var.description
  labels              = var.labels
  folder_id           = local.folder_id
}
