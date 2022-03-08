resource "google_project_service" "geolocation" {
  project = var.project_id
  service = "geolocation.${var.api-endpoint}"
  count = var.geolocation ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "geolocation" {
type = bool
}