resource "google_project_service" "servicemanagement" {
  project = var.project_id
  service = "servicemanagement.${var.api-endpoint}"
  count = var.servicemanagement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "servicemanagement" {
type = bool
}