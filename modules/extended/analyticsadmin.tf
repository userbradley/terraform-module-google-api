resource "google_project_service" "analyticsadmin" {
  project = var.project_id
  service = "analyticsadmin.${var.api-endpoint}"
  count = var.analyticsadmin ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "analyticsadmin" {
type = bool
}