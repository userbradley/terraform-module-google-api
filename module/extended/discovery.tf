resource "google_project_service" "discovery" {
  project = var.project_id
  service = "discovery.${var.api-endpoint}"
  count = var.discovery ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "discovery" {
type = bool
}