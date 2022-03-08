resource "google_project_service" "contactcenterinsights" {
  project = var.project_id
  service = "contactcenterinsights.${var.api-endpoint}"
  count = var.contactcenterinsights ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "contactcenterinsights" {
type = bool
}