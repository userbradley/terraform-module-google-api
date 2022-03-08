resource "google_project_service" "firebasestorage" {
  project = var.project_id
  service = "firebasestorage.${var.api-endpoint}"
  count = var.firebasestorage ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebasestorage" {
type = bool
}