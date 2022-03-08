resource "google_project_service" "meshconfig" {
  project = var.project_id
  service = "meshconfig.${var.api-endpoint}"
  count = var.meshconfig ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "meshconfig" {
type = bool
}