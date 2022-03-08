resource "google_project_service" "notebooks" {
  project = var.project_id
  service = "notebooks.${var.api-endpoint}"
  count = var.notebooks ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "notebooks" {
type = bool
}