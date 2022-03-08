resource "google_project_service" "automl" {
  project = var.project_id
  service = "automl.${var.api-endpoint}"
  count = var.automl ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "automl" {
type = bool
}