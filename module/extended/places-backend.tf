resource "google_project_service" "placesbackend" {
  project = var.project_id
  service = "places-backend.${var.api-endpoint}"
  count = var.placesbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "placesbackend" {
type = bool
}