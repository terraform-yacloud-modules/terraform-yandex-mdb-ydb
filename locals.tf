locals {
  folder_id = coalesce(var.folder_id, data.yandex_client_config.client.folder_id)

  scale_policy_config = var.scale_policy != null ? var.scale_policy : {
    fixed_scale = {
      size = var.fixed_scale_size
    }
  }
}
