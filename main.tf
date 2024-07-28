resource "yandex_ydb_database_dedicated" "dedicated_database" {
  count             = var.database_type == "dedicated" ? 1 : 0
  name              = var.name
  folder_id         = var.folder_id
  network_id        = var.network_id
  subnet_ids        = var.subnet_ids
  resource_preset_id = var.resource_preset_id
  deletion_protection = var.deletion_protection

  scale_policy {
    fixed_scale {
      size = var.fixed_scale_size
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
  count             = var.database_type == "serverless" ? 1 : 0
  name              = var.name
  folder_id         = var.folder_id
  deletion_protection = var.deletion_protection
}
