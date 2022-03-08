resource "google_project_service" "vision" {
  project = var.project_id
  service = "vision.${var.api-endpoint}"
  count = var.vision ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "vision" {
type = bool
}