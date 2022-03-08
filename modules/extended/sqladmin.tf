resource "google_project_service" "sqladmin" {
  project = var.project_id
  service = "sqladmin.${var.api-endpoint}"
  count = var.sqladmin ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "sqladmin" {
type = bool
}