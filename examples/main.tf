module "cdn" {
  source = "../"

  # Общие переменные
  database_type         = "dedicated"  # или "serverless"
  name                  = "my-ydb-cluster"
  folder_id             = "your-folder-id"
  deletion_protection   = true

  # Переменные для dedicated
  network_id            = "your-network-id"
  subnet_ids            = ["your-subnet-id-1", "your-subnet-id-2"]
  resource_preset_id    = "medium"
  fixed_scale_size      = 1
  storage_group_count   = 1
  storage_type_id       = "ssd"
  region_id             = "ru-central1"

  # Переменные для serverless (не требуются, если database_type = "dedicated")
  # network_id          = null
  # subnet_ids          = null
  # resource_preset_id  = null
  # fixed_scale_size    = null
  # storage_group_count = null
  # storage_type_id     = null
  # region_id           = null
}
