data "yandex_client_config" "client" {}

module "network" {
  source = "git::https://github.com/terraform-yacloud-modules/terraform-yandex-vpc.git?ref=v1.0.0"

  folder_id = data.yandex_client_config.client.folder_id

  blank_name = "vpc-nat-gateway"
  labels = {
    repo = "terraform-yacloud-modules/terraform-yandex-vpc"
  }

  azs = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]

  private_subnets = [["10.4.0.0/24"],["10.5.0.0/24"],["10.6.0.0/24"]]

  create_vpc         = true
  create_nat_gateway = true
}

module "ydb" {
  source = "../"

  folder_id = data.yandex_client_config.client.folder_id
  # Общие переменные
  database_type       = "serverless" # dedicated или serverless
  name                = "my-ydb-cluster"
  deletion_protection = true
  network_id          = module.network.vpc_id
  subnet_ids          = [module.network.private_subnets_ids[0], module.network.private_subnets_ids[1], module.network.private_subnets_ids[2]]
  resource_preset_id  = "medium"
  fixed_scale_size    = 1
  storage_group_count = 1
  storage_type_id     = "ssd"
  region_id           = "ru-central1"
}
