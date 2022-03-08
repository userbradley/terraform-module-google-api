resource "google_project_service" "testing" {
  project = var.project_id
  service = "testing.${var.api-endpoint}"
  count = var.testing ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "testing" {
type = bool
}