module "iam-binding" {
  source = "git::ssh://git@github.com/userbradley/terraform-module-google-api.git//modules/simple"
  api    = var.api
}

variable "api" {
  type = list(string)
}

