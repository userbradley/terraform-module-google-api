resource "google_project_service" "osconfig" {
  project = var.project_id
  service = "osconfig.${var.api-endpoint}"
  count = var.osconfig ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "osconfig" {
type = bool
}