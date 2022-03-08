resource "google_project_service" "runtimeconfig" {
  project = var.project_id
  service = "runtimeconfig.${var.api-endpoint}"
  count = var.runtimeconfig ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "runtimeconfig" {
type = bool
}