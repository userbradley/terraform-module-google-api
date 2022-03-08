resource "google_project_service" "storage" {
  project = var.project_id
  service = "storage.${var.api-endpoint}"
  count = var.storage ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "storage" {
type = bool
}