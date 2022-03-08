resource "google_project_service" "analyticsdata" {
  project = var.project_id
  service = "analyticsdata.${var.api-endpoint}"
  count = var.analyticsdata ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "analyticsdata" {
type = bool
}