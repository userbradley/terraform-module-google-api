resource "google_project_service" "meshtelemetry" {
  project = var.project_id
  service = "meshtelemetry.${var.api-endpoint}"
  count = var.meshtelemetry ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "meshtelemetry" {
type = bool
}