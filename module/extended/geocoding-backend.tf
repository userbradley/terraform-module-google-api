resource "google_project_service" "geocodingbackend" {
  project = var.project_id
  service = "geocoding-backend.${var.api-endpoint}"
  count = var.geocodingbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "geocodingbackend" {
type = bool
}