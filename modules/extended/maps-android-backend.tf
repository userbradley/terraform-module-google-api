resource "google_project_service" "mapsandroidbackend" {
  project = var.project_id
  service = "maps-android-backend.${var.api-endpoint}"
  count = var.mapsandroidbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mapsandroidbackend" {
type = bool
}