resource "google_project_service" "docs" {
  project = var.project_id
  service = "docs.${var.api-endpoint}"
  count = var.docs ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "docs" {
type = bool
}