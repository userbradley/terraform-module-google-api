resource "google_project_service" "connectors" {
  project = var.project_id
  service = "connectors.${var.api-endpoint}"
  count = var.connectors ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "connectors" {
type = bool
}