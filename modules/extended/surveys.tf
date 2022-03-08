resource "google_project_service" "surveys" {
  project = var.project_id
  service = "surveys.${var.api-endpoint}"
  count = var.surveys ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "surveys" {
type = bool
}