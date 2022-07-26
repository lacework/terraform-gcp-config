# Integrate a Google Cloud Organization with Lacework for Configuration Assessment Excluding Folder(s)
The following provides an example of integrating a Google Cloud Organization with Lacework for Cloud Resource configuration assessment, excluding specific folders.

The fields required for this example are:

| Name | Description | Type |
|------|-------------|------|
| `org_integration` | Set this to `true` to configure an organization level integration. | `bool` |
| `organization_id` | The id of the GCP Organization to integrate with. | `string` |
| `project_id` | The id of a Project, which will be used to deploy required resources for the integration. Note: if this is var is not explicitly set, the provider will check for the presence of the `GOOGLE_PROJECT` env var | `string` |
| `folders_to_exclude` | List of root folders to exclude in an organization-level integration.  Format is 'folders/1234567890' | `set(string)` |


```hcl
terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}

provider "google" {}

provider "lacework" {}

module "gcp_organization_level_config" {
  source = "lacework/config/gcp"
  version = "~> 2.0"
  
  # Set this integration to be created at the Organization level,
  # a project id is needed since Lacework needs to deploy a few
  # resources and those will be created in the provided project
  # if no project_id is supplied, the project hosting the Service Account used to run the Terraform will be used
  org_integration      = true
  organization_id      = "my-organization-id"
  project_id           = "abc-demo-project-123"
  folders_to_exclude   = [
    "folders/578370918314", 
    "folders/1099205162015",
  ] 
}
```

Run Terraform:
```
$ terraform init
$ GOOGLE_CREDENTIALS=account.json terraform apply
```

For detailed information on integrating Lacework with Google Cloud see [GCP Compliance and Audit Trail Integration - Terraform From Any Supported Host](https://docs.lacework.com/onboarding/gcp-compliance-and-audit-log-integration-terraform-from-any-supported-host)
