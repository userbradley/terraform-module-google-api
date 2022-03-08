resource "google_project_service" "playcustomapp" {
  project = var.project_id
  service = "playcustomapp.${var.api-endpoint}"
  count = var.playcustomapp ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "playcustomapp" {
type = bool
}