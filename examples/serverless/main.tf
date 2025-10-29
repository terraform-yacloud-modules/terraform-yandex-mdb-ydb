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
  source = "../../"

  # Тип базы данных: "dedicated" или "serverless"
  database_type = "serverless"

  # Основные параметры
  name                = "ydb-serverless-example"
  deletion_protection = false
  description         = "Serverless YDB example instance"
  labels = {
    environment = "production"
  }

  # Параметры для serverless (другие параметры игнорируются для serverless)
  network_id         = null
  subnet_ids         = []
  resource_preset_id = null
}
