resource "google_project_service" "serviceconsumermanagement" {
  project = var.project_id
  service = "serviceconsumermanagement.${var.api-endpoint}"
  count = var.serviceconsumermanagement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "serviceconsumermanagement" {
type = bool
}