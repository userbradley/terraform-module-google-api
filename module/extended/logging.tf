resource "google_project_service" "logging" {
  project = var.project_id
  service = "logging.${var.api-endpoint}"
  count = var.logging ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "logging" {
type = bool
}