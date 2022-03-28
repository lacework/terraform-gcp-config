<a href="https://lacework.com"><img src="https://techally-content.s3-us-west-1.amazonaws.com/public-content/lacework_logo_full.png" width="600"></a>

# terraform-gcp-config

[![GitHub release](https://img.shields.io/github/release/lacework/terraform-gcp-config.svg)](https://github.com/lacework/terraform-gcp-config/releases/)
[![Codefresh build status]( https://g.codefresh.io/api/badges/pipeline/lacework/terraform-modules%2Ftest-compatibility?type=cf-1&key=eyJhbGciOiJIUzI1NiJ9.NWVmNTAxOGU4Y2FjOGQzYTkxYjg3ZDEx.RJ3DEzWmBXrJX7m38iExJ_ntGv4_Ip8VTa-an8gBwBo)]( https://g.codefresh.io/pipelines/edit/new/builds?id=607e25e6728f5a6fba30431b&pipeline=test-compatibility&projects=terraform-modules&projectId=607db54b728f5a5f8930405d)

Terraform module for integrating Google Cloud Platform Organizations and Projects with Lacework for cloud resource configuration assessment.

:warning: - **NOTE:** When using an existing Service Account, Terraform cannot work out whether a role has already been applied.
This means when running the destroy step, existing roles may be removed from the Service Account. If this Service Account
is managed by  another Terraform module, you can re-run apply on the other module and this will re-add the role.

Alternatively, it is possible to remove the offending roles from the state file before destroy, preventing the role(s)
from being removed.

e.g. `terraform state rm 'google_project_iam_binding.for_lacework_service_account'`

## Required Roles
```
roles/browser
roles/iam.securityReviewer
roles/cloudasset.viewer
```

The following custom role is required depending on the integration level.
`Lacework Compliance Role` or `Lacework Org Compliance Role`
Both roles include the following permissions:
```
bigquery.datasets.get
compute.projects.get
pubsub.topics.get
storage.buckets.get
compute.sslPolicies.get
```

## Required APIs
```
iam.googleapis.com
cloudkms.googleapis.com
dns.googleapis.com
pubsub.googleapis.com
compute.googleapis.com
logging.googleapis.com
bigquery.googleapis.com
sqladmin.googleapis.com
container.googleapis.com
serviceusage.googleapis.com
cloudresourcemanager.googleapis.com
storage-component.googleapis.com
cloudasset.googleapis.com
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.4.0, < 5.0.0 |
| <a name="requirement_lacework"></a> [lacework](#requirement\_lacework) | ~> 0.2 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.11.0 |
| <a name="provider_lacework"></a> [lacework](#provider\_lacework) | 0.15.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.7.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lacework_cfg_svc_account"></a> [lacework\_cfg\_svc\_account](#module\_lacework\_cfg\_svc\_account) | lacework/service-account/gcp | ~> 1.0 |

## Resources

| Name | Type |
|------|------|
| [google_folder_iam_member.for_lacework_service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder_iam_member) | resource |
| [google_organization_iam_custom_role.lacework_custom_organization_role](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_custom_role) | resource |
| [google_organization_iam_member.for_lacework_service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.lacework_custom_organization_role_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_project_iam_custom_role.lacework_custom_project_role](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_custom_role) | resource |
| [google_project_iam_member.for_lacework_service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.for_lacework_service_account_root_projects](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.lacework_custom_project_role_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_service.required_apis](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [lacework_integration_gcp_cfg.default](https://registry.terraform.io/providers/lacework/lacework/latest/docs/resources/integration_gcp_cfg) | resource |
| [random_id.uniq](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [time_sleep.wait_time](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [google_folders.my-org-folders](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/folders) | data source |
| [google_project.selected](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project) | data source |
| [google_projects.my-org-projects](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/projects) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_folders_to_exclude"></a> [folders\_to\_exclude](#input\_folders\_to\_exclude) | List of root folders to exclude in an organization-level integration.  Format is 'folders/1234567890' | `set(string)` | `[]` | no |
| <a name="input_include_root_projects"></a> [include\_root\_projects](#input\_include\_root\_projects) | Enables logic to include root-level projects if excluding folders.  Default is true | `bool` | `true` | no |
| <a name="input_lacework_integration_name"></a> [lacework\_integration\_name](#input\_lacework\_integration\_name) | n/a | `string` | `"TF config"` | no |
| <a name="input_org_integration"></a> [org\_integration](#input\_org\_integration) | If set to true, configure an organization level integration | `bool` | `false` | no |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | The organization ID, required if org\_integration is set to true | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | The prefix that will be use at the beginning of every generated resource | `string` | `"lw-cfg"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | A project ID different from the default defined inside the provider | `string` | `""` | no |
| <a name="input_required_config_apis"></a> [required\_config\_apis](#input\_required\_config\_apis) | n/a | `map(any)` | <pre>{<br>  "bigquery": "bigquery.googleapis.com",<br>  "cloudasset_inventory": "cloudasset.googleapis.com",<br>  "compute": "compute.googleapis.com",<br>  "containers": "container.googleapis.com",<br>  "dns": "dns.googleapis.com",<br>  "iam": "iam.googleapis.com",<br>  "kms": "cloudkms.googleapis.com",<br>  "logging": "logging.googleapis.com",<br>  "pubsub": "pubsub.googleapis.com",<br>  "resourcemanager": "cloudresourcemanager.googleapis.com",<br>  "serviceusage": "serviceusage.googleapis.com",<br>  "sqladmin": "sqladmin.googleapis.com",<br>  "storage_component": "storage-component.googleapis.com"<br>}</pre> | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | The Service Account name (required when use\_existing\_service\_account is set to true). This can also be used to specify the new service account name when use\_existing\_service\_account is set to false | `string` | `""` | no |
| <a name="input_service_account_private_key"></a> [service\_account\_private\_key](#input\_service\_account\_private\_key) | The private key in JSON format, base64 encoded (required when use\_existing\_service\_account is set to true) | `string` | `""` | no |
| <a name="input_use_existing_service_account"></a> [use\_existing\_service\_account](#input\_use\_existing\_service\_account) | Set this to true to use an existing Service Account | `bool` | `false` | no |
| <a name="input_wait_time"></a> [wait\_time](#input\_wait\_time) | Amount of time to wait before the next resource is provisioned | `string` | `"10s"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_account_name"></a> [service\_account\_name](#output\_service\_account\_name) | The Service Account name |
| <a name="output_service_account_private_key"></a> [service\_account\_private\_key](#output\_service\_account\_private\_key) | The private key in JSON format, base64 encoded |
