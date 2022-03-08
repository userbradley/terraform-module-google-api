resource "google_project_service" "endpoints" {
  project = var.project_id
  service = "endpoints.${var.api-endpoint}"
  count = var.endpoints ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "endpoints" {
type = bool
}