resource "google_project_service" "manufacturers" {
  project = var.project_id
  service = "manufacturers.${var.api-endpoint}"
  count = var.manufacturers ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "manufacturers" {
type = bool
}