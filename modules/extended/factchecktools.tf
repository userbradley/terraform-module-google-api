resource "google_project_service" "factchecktools" {
  project = var.project_id
  service = "factchecktools.${var.api-endpoint}"
  count = var.factchecktools ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "factchecktools" {
type = bool
}