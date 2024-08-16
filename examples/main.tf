data "yandex_client_config" "client" {}

module "network" {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-vpc.git?ref=v1.0.0"

  folder_id = data.yandex_client_config.client.folder_id

  blank_name = "ydb-vpc-nat-gateway"
  labels = {
    repo = "terraform-yacloud-modules/terraform-yandex-vpc"
  }

  azs = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]

  private_subnets = [["10.13.0.0/24"], ["10.14.0.0/24"], ["10.15.0.0/24"]]

  create_vpc         = true
  create_nat_gateway = true
}

module "ydb" {
  source = "../"

  # Тип базы данных: "dedicated" или "serverless"
  database_type = "dedicated"

  # Общие параметры
  name                = "my-ydb-cluster"
  deletion_protection = false
  description         = "My Yandex Database cluster"
  labels = {
    environment = "production"
  }

  # Параметры для dedicated базы данных
  network_id = module.network.vpc_id
  subnet_ids = [
    module.network.private_subnets_ids[0],
    module.network.private_subnets_ids[1],
    module.network.private_subnets_ids[2]
  ]
  resource_preset_id  = "medium"
  fixed_scale_size    = 3
  storage_group_count = 2
  storage_type_id     = "ssd"
}
