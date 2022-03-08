resource "google_project_service" "programmablesearchelement" {
  project = var.project_id
  service = "programmablesearchelement.${var.api-endpoint}"
  count = var.programmablesearchelement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "programmablesearchelement" {
type = bool
}