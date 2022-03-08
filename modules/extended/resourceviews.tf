resource "google_project_service" "resourceviews" {
  project = var.project_id
  service = "resourceviews.${var.api-endpoint}"
  count = var.resourceviews ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "resourceviews" {
type = bool
}