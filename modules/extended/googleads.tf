resource "google_project_service" "googleads" {
  project = var.project_id
  service = "googleads.${var.api-endpoint}"
  count = var.googleads ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "googleads" {
type = bool
}