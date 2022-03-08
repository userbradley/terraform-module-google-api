resource "google_project_service" "arcorecloudanchor" {
  project = var.project_id
  service = "arcorecloudanchor.${var.api-endpoint}"
  count = var.arcorecloudanchor ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "arcorecloudanchor" {
type = bool
}