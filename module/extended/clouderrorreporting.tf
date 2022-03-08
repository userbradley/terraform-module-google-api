resource "google_project_service" "clouderrorreporting" {
  project = var.project_id
  service = "clouderrorreporting.${var.api-endpoint}"
  count = var.clouderrorreporting ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "clouderrorreporting" {
type = bool
}