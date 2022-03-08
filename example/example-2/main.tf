module "api" {
  source = "git::ssh://git@github.com/userbradley/terraform-module-google-api.git"
  api    = var.api
}

variable "api" {
  type = list(string)
}

