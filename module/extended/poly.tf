resource "google_project_service" "poly" {
  project = var.project_id
  service = "poly.${var.api-endpoint}"
  count = var.poly ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "poly" {
type = bool
}