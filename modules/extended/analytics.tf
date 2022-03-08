resource "google_project_service" "analytics" {
  project = var.project_id
  service = "analytics.${var.api-endpoint}"
  count = var.analytics ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "analytics" {
type = bool
}