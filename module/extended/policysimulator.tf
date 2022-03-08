resource "google_project_service" "policysimulator" {
  project = var.project_id
  service = "policysimulator.${var.api-endpoint}"
  count = var.policysimulator ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "policysimulator" {
type = bool
}