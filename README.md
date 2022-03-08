![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![Maintainer](https://img.shields.io/badge/Built%20By-Bradley-brightgreen?style=for-the-badge&logo=terraform)


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api"></a> [api](#input\_api) | n/a | `list(string)` | n/a | yes |

## Outputs

No outputs.

## Example enabling only compute

```hcl
module "iam-binding" {
  source = "git::ssh://git@github.com/userbradley/terraform-module-google-api.git//modules/simple"
  api    = ["compute.googleapis.com"]
}

/*
bigquery.googleapis.com              BigQuery API
bigquerystorage.googleapis.com       BigQuery Storage API
clouddebugger.googleapis.com         Cloud Debugger API
cloudtrace.googleapis.com            Cloud Trace API
datastore.googleapis.com             Cloud Datastore API
logging.googleapis.com               Cloud Logging API
monitoring.googleapis.com            Cloud Monitoring API
oslogin.googleapis.com               Cloud OS Login API
pubsub.googleapis.com                Cloud Pub/Sub API
sql-component.googleapis.com         Cloud SQL
storage-api.googleapis.com           Google Cloud Storage JSON API
storage-component.googleapis.com     Cloud Storage
storage.googleapis.com               Cloud Storage API
*/
```
---

## Example enabling a few API's

`main.tf`
```hcl
module "iam-binding" {
  source = "git::ssh://git@github.com/userbradley/terraform-module-google-api.git//modules/simple"
  api    = var.api
}

variable "api" {
  type = list(string)
}

```

`variables.tf`
```hcl
api = [
  "run.googleapis.com",
  "containerregistry.googleapis.com",
  "compute.googleapis.com",
  "iam.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "servicemanagement.googleapis.com",
  "serviceusage.googleapis.com",
  "iamcredentials.googleapis.com",
  "cloudapis.googleapis.com",
  "dns.googleapis.com",
  "container.googleapis.com",
  "file.googleapis.com"
]

/*
bigquery.googleapis.com              BigQuery API
bigquerystorage.googleapis.com       BigQuery Storage API
clouddebugger.googleapis.com         Cloud Debugger API
cloudtrace.googleapis.com            Cloud Trace API
datastore.googleapis.com             Cloud Datastore API
logging.googleapis.com               Cloud Logging API
monitoring.googleapis.com            Cloud Monitoring API
oslogin.googleapis.com               Cloud OS Login API
pubsub.googleapis.com                Cloud Pub/Sub API
sql-component.googleapis.com         Cloud SQL
storage-api.googleapis.com           Google Cloud Storage JSON API
storage-component.googleapis.com     Cloud Storage
storage.googleapis.com               Cloud Storage API
*/
```
