resource "google_project_service" "roads" {
  project = var.project_id
  service = "roads.${var.api-endpoint}"
  count = var.roads ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "roads" {
type = bool
}