resource "google_project_service" "timezonebackend" {
  project = var.project_id
  service = "timezone-backend.${var.api-endpoint}"
  count = var.timezonebackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "timezonebackend" {
type = bool
}