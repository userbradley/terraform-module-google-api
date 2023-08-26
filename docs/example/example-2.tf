module "api" {
  source = "git@github.com:userbradley/terraform-module-google-api.git?ref=1.0.0"
  api = [
    "autoscaling.googleapis.com",
    "cloudapis.googleapis.com",
    "cloudasset.googleapis.com",
    "clouddebugger.googleapis.com",
  ]
  project = var.project
}
