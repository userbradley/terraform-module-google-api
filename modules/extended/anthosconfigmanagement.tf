resource "google_project_service" "anthosconfigmanagement" {
  project = var.project_id
  service = "anthosconfigmanagement.${var.api-endpoint}"
  count = var.anthosconfigmanagement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "anthosconfigmanagement" {
type = bool
}