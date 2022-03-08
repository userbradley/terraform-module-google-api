resource "google_project_service" "mapsembedbackend" {
  project = var.project_id
  service = "maps-embed-backend.${var.api-endpoint}"
  count = var.mapsembedbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mapsembedbackend" {
type = bool
}