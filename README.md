<a href="https://lacework.com"><img src="https://techally-content.s3-us-west-1.amazonaws.com/public-content/lacework_logo_full.png" width="600"></a>

# terraform-gcp-config

[![GitHub release](https://img.shields.io/github/release/lacework/terraform-gcp-config.svg)](https://github.com/lacework/terraform-gcp-config/releases/)
[![CircleCI status](https://circleci.com/gh/lacework/terraform-gcp-config.svg?style=shield)](https://circleci.com/gh/lacework/terraform-gcp-config)

Terraform module for integrating Google Cloud Platform Organizations and Projects with Lacework for cloud resource configuration assessment.

NOTE: When using an existing Service Account, Terraform cannot work out whether a role has already been applied.
This mean when running the destroy step, existing roles may be removed from the Service Account. If this Service Account
is managed by  another Terraform module, you can re-run apply on the other module and this will re-add the role.

Alternatively, it is possible to remove the offending roles from the state file before destroy, preventing the role(s)
from being removed.

## Required Roles
```
roles/browser
roles/iam.securityReviewer
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
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
|org_integration|If set to true, configure an organization level integration|bool|false|false|
|organization_id|The organization ID, required if org_integration is set to true|string|""|false|
|project_id|A project ID different from the default defined inside the provider|string|""|false|
|use_existing_service_account|Set this to true to use an existing Service Account. When using an existing service account, the required roles must be added manually.|bool|false|false|
|service_account_name|The Service Account name (required when use_existing_service_account is set to true). This can also be used to specify the new service account name when use_existing_service_account is set to false|string|""|false|
|service_account_private_key|The private key in JSON format, base64 encoded (required when use_existing_service_account is set to true)|string|""|false|
|lacework_integration_name|The integration name displayed in the Lacework UI.|string|TF config|false|
|required_config_apis|The APIs that should be enabled for this integration to be successful.|map|See the Required APIs section|false|
|prefix|The prefix that will be used at the beginning of every generated resource|string|lw-cfg|false|
|wait_time|Amount of time to wait before the next resource is provisioned.|string|10s|false|


## Outputs

| Name | Description |
|------|-------------|
|service_account_name|The Service Account name|
|service_account_private_key|The private key in JSON format, base64 encoded|
