resource "google_project_service" "smartdevicemanagement" {
  project = var.project_id
  service = "smartdevicemanagement.${var.api-endpoint}"
  count = var.smartdevicemanagement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "smartdevicemanagement" {
type = bool
}