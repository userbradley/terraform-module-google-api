resource "google_project_service" "servicenetworking" {
  project = var.project_id
  service = "servicenetworking.${var.api-endpoint}"
  count = var.servicenetworking ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "servicenetworking" {
type = bool
}