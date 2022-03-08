resource "google_project_service" "integrations" {
  project = var.project_id
  service = "integrations.${var.api-endpoint}"
  count = var.integrations ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "integrations" {
type = bool
}