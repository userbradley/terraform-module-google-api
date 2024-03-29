terraform {
  source = "git@github.com:userbradley/terraform-module-google-api.git?ref=1.0.0"
}

inputs = {
  api = [
    "compute.googleapis.com",
  ]
  project = "<project-name>"
}

remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    project              = "<project>"
    location             = "<region>"
    bucket               = "<bucket-name>"
    prefix               = ""
    skip_bucket_creation = true
  }
}

locals {
  provider = read_terragrunt_config(find_in_parent_folders("provider.hcl"))
}
generate = local.provider.generate
