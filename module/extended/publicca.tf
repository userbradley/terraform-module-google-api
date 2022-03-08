resource "google_project_service" "publicca" {
  project = var.project_id
  service = "publicca.${var.api-endpoint}"
  count = var.publicca ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "publicca" {
type = bool
}