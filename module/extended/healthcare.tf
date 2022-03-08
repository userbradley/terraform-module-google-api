resource "google_project_service" "healthcare" {
  project = var.project_id
  service = "healthcare.${var.api-endpoint}"
  count = var.healthcare ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "healthcare" {
type = bool
}