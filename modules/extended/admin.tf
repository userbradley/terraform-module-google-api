resource "google_project_service" "admin" {
  project = var.project_id
  service = "admin.${var.api-endpoint}"
  count = var.admin ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "admin" {
type = bool
}