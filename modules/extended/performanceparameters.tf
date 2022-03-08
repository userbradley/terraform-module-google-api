resource "google_project_service" "performanceparameters" {
  project = var.project_id
  service = "performanceparameters.${var.api-endpoint}"
  count = var.performanceparameters ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "performanceparameters" {
type = bool
}