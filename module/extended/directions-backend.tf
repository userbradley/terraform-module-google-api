resource "google_project_service" "directionsbackend" {
  project = var.project_id
  service = "directions-backend.${var.api-endpoint}"
  count = var.directionsbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "directionsbackend" {
type = bool
}