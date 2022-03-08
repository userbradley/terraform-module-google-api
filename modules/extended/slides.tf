resource "google_project_service" "slides" {
  project = var.project_id
  service = "slides.${var.api-endpoint}"
  count = var.slides ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "slides" {
type = bool
}