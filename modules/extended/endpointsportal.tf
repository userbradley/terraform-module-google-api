resource "google_project_service" "endpointsportal" {
  project = var.project_id
  service = "endpointsportal.${var.api-endpoint}"
  count = var.endpointsportal ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "endpointsportal" {
type = bool
}