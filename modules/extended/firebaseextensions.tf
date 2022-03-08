resource "google_project_service" "firebaseextensions" {
  project = var.project_id
  service = "firebaseextensions.${var.api-endpoint}"
  count = var.firebaseextensions ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebaseextensions" {
type = bool
}