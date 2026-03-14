module "ydb" {
  source = "../../"

  database_type = "serverless"

  name                = "ydb-serverless-example"
  deletion_protection = false
  description         = "Serverless YDB example instance"
  location_id         = "ru-central1" # рекомендуется указывать для create/update
  labels = {
    environment = "production"
  }

  serverless_database = {
    throttling_rcu_limit        = 50
    storage_size_limit          = 50
    enable_throttling_rcu_limit = true
    provisioned_rcu_limit       = 0
  }
}
