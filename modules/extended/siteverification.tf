resource "google_project_service" "siteverification" {
  project = var.project_id
  service = "siteverification.${var.api-endpoint}"
  count = var.siteverification ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "siteverification" {
type = bool
}