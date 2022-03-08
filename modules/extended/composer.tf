resource "google_project_service" "composer" {
  project = var.project_id
  service = "composer.${var.api-endpoint}"
  count = var.composer ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "composer" {
type = bool
}