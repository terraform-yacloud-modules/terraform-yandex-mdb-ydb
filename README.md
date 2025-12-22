# Yandex Cloud <RESOURCE> Terraform module

Terraform module which creates Yandex Cloud <RESOURCE> resources.

## Examples

Examples codified under
the [`examples`](https://github.com/terraform-yacloud-modules/terraform-yandex-module-template/tree/main/examples) are intended
to give users references for how to use the module(s) as well as testing/validating changes to the source code of the
module. If contributing to the project, please be sure to make any appropriate updates to the relevant examples to allow
maintainers to test your changes and to keep the examples up to date for users. Thank you!

<!-- BEGIN_TF_DOCS -->
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
| [yandex_client_config.client](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_public_ips"></a> [assign\_public\_ips](#input\_assign\_public\_ips) | Whether public IP addresses should be assigned to the Yandex Database cluster | `bool` | `false` | no |
| <a name="input_database_type"></a> [database\_type](#input\_database\_type) | Type of the Yandex Database to create (dedicated or serverless) | `string` | n/a | yes |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Inhibits deletion of the database | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | A description for the Yandex Database cluster | `string` | `null` | no |
| <a name="input_fixed_scale_size"></a> [fixed\_scale\_size](#input\_fixed\_scale\_size) | Number of instances for the Yandex Database cluster (only for dedicated) | `number` | `1` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | (Optional) The ID of the Yandex Cloud Folder that the resources belongs to.<br/><br/>    Allows to create bucket in different folder.<br/>    It will try to create bucket using IAM-token in provider config, not using access\_key.<br/>    If omitted, folder\_id specified in provider config and access\_key is used. | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | A set of key/value label pairs to assign to the Yandex Database cluster | `map(string)` | `{}` | no |
| <a name="input_location_id"></a> [location\_id](#input\_location\_id) | Location ID for the Yandex Database cluster (alternative to region block) | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Yandex Database cluster | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | ID of the network to attach the Yandex Database cluster to (only for dedicated) | `string` | `null` | no |
| <a name="input_region_id"></a> [region\_id](#input\_region\_id) | Region ID for the Yandex Database cluster (only for dedicated) | `string` | `"ru-central1"` | no |
| <a name="input_resource_preset_id"></a> [resource\_preset\_id](#input\_resource\_preset\_id) | The Yandex Database cluster preset (only for dedicated) | `string` | `null` | no |
| <a name="input_scale_policy"></a> [scale\_policy](#input\_scale\_policy) | Scaling policy for the Yandex Database cluster. Can be either `fixed_scale` or `auto_scale` | `any` | `null` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | A set of security group IDs to attach to the dedicated YDB cluster | `set(string)` | `[]` | no |
| <a name="input_sleep_after"></a> [sleep\_after](#input\_sleep\_after) | Delay after creation before proceeding with further operations | `number` | `null` | no |
| <a name="input_storage_group_count"></a> [storage\_group\_count](#input\_storage\_group\_count) | Amount of storage groups of selected type for the Yandex Database cluster (only for dedicated) | `number` | `1` | no |
| <a name="input_storage_type_id"></a> [storage\_type\_id](#input\_storage\_type\_id) | Storage type ID for the Yandex Database cluster (only for dedicated) | `string` | `"ssd"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | Set of subnet IDs to attach the Yandex Database cluster to (only for dedicated) | `set(string)` | `null` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | Timeout configuration for create, update, and delete operations | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_api_endpoint"></a> [database\_api\_endpoint](#output\_database\_api\_endpoint) | API endpoint of the Yandex Database cluster. Useful for SDK configuration. |
| <a name="output_database_created_at"></a> [database\_created\_at](#output\_database\_created\_at) | The Yandex Database cluster creation timestamp. |
| <a name="output_database_endpoint"></a> [database\_endpoint](#output\_database\_endpoint) | Full endpoint of the Yandex Database cluster. |
| <a name="output_database_id"></a> [database\_id](#output\_database\_id) | ID of the Yandex Database cluster. |
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | Name of the Yandex Database cluster. |
| <a name="output_database_path"></a> [database\_path](#output\_database\_path) | Full database path of the Yandex Database cluster. Useful for SDK configuration. |
| <a name="output_database_status"></a> [database\_status](#output\_database\_status) | Status of the Yandex Database cluster. |
| <a name="output_database_tls_enabled"></a> [database\_tls\_enabled](#output\_database\_tls\_enabled) | Whether TLS is enabled for the Yandex Database cluster. Useful for SDK configuration. |
<!-- END_TF_DOCS -->

## License

Apache-2.0 Licensed.
See [LICENSE](https://github.com/terraform-yacloud-modules/terraform-yandex-module-template/blob/main/LICENSE).
