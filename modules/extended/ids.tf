resource "google_project_service" "ids" {
  project = var.project_id
  service = "ids.${var.api-endpoint}"
  count = var.ids ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "ids" {
type = bool
}