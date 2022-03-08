resource "google_project_service" "gameservices" {
  project = var.project_id
  service = "gameservices.${var.api-endpoint}"
  count = var.gameservices ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "gameservices" {
type = bool
}