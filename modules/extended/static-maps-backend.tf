resource "google_project_service" "staticmapsbackend" {
  project = var.project_id
  service = "static-maps-backend.${var.api-endpoint}"
  count = var.staticmapsbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "staticmapsbackend" {
type = bool
}