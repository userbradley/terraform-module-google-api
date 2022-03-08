resource "google_project_service" "firebaseappdistribution" {
  project = var.project_id
  service = "firebaseappdistribution.${var.api-endpoint}"
  count = var.firebaseappdistribution ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebaseappdistribution" {
type = bool
}