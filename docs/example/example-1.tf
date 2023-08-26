module "api" {
  source  = "git@github.com:userbradley/terraform-module-google-api.git?ref=1.0.0"
  api     = ["compute.googleapis.com"]
  project = var.project
}
