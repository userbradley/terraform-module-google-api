resource "google_project_service" "mapsiosbackend" {
  project = var.project_id
  service = "maps-ios-backend.${var.api-endpoint}"
  count = var.mapsiosbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mapsiosbackend" {
type = bool
}