resource "google_project_service" "certificatemanager" {
  project = var.project_id
  service = "certificatemanager.${var.api-endpoint}"
  count = var.certificatemanager ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "certificatemanager" {
type = bool
}