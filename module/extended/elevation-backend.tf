resource "google_project_service" "elevationbackend" {
  project = var.project_id
  service = "elevation-backend.${var.api-endpoint}"
  count = var.elevationbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "elevationbackend" {
type = bool
}