resource "google_project_service" "apikeys" {
  project = var.project_id
  service = "apikeys.${var.api-endpoint}"
  count = var.apikeys ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "apikeys" {
type = bool
}