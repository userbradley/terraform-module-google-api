resource "google_project_service" "clouddebugger" {
  project = var.project_id
  service = "clouddebugger.${var.api-endpoint}"
  count = var.clouddebugger ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "clouddebugger" {
type = bool
}