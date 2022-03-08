resource "google_project_service" "carddav" {
  project = var.project_id
  service = "carddav.${var.api-endpoint}"
  count = var.carddav ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "carddav" {
type = bool
}