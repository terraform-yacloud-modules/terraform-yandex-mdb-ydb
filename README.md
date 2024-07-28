# Yandex Cloud <RESOURCE> Terraform module

Terraform module which creates Yandex Cloud <RESOURCE> resources.

## Examples

Examples codified under
the [`examples`](https://github.com/terraform-yacloud-modules/terraform-yandex-module-template/tree/main/examples) are intended
to give users references for how to use the module(s) as well as testing/validating changes to the source code of the
module. If contributing to the project, please be sure to make any appropriate updates to the relevant examples to allow
maintainers to test your changes and to keep the examples up to date for users. Thank you!

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.72.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_ydb_database_dedicated.dedicated_database](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/ydb_database_dedicated) | resource |
| [yandex_ydb_database_serverless.serverless_database](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/ydb_database_serverless) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_type"></a> [database\_type](#input\_database\_type) | Type of the Yandex Database to create (dedicated or serverless) | `string` | `"dedicated"` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Inhibits deletion of the database | `bool` | `true` | no |
| <a name="input_fixed_scale_size"></a> [fixed\_scale\_size](#input\_fixed\_scale\_size) | Number of instances for the Yandex Database cluster (only for dedicated) | `number` | `1` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | ID of the folder that the Yandex Database cluster belongs to | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Yandex Database cluster | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | ID of the network to attach the Yandex Database cluster to (only for dedicated) | `string` | `null` | no |
| <a name="input_region_id"></a> [region\_id](#input\_region\_id) | Region ID for the Yandex Database cluster (only for dedicated) | `string` | `"ru-central1"` | no |
| <a name="input_resource_preset_id"></a> [resource\_preset\_id](#input\_resource\_preset\_id) | The Yandex Database cluster preset (only for dedicated) | `string` | `null` | no |
| <a name="input_storage_group_count"></a> [storage\_group\_count](#input\_storage\_group\_count) | Amount of storage groups of selected type for the Yandex Database cluster (only for dedicated) | `number` | `1` | no |
| <a name="input_storage_type_id"></a> [storage\_type\_id](#input\_storage\_type\_id) | Storage type ID for the Yandex Database cluster (only for dedicated) | `string` | `"ssd"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs to attach the Yandex Database cluster to (only for dedicated) | `list(string)` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache-2.0 Licensed.
See [LICENSE](https://github.com/terraform-yacloud-modules/terraform-yandex-module-template/blob/main/LICENSE).
