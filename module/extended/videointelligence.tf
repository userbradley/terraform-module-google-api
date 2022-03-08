resource "google_project_service" "videointelligence" {
  project = var.project_id
  service = "videointelligence.${var.api-endpoint}"
  count = var.videointelligence ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "videointelligence" {
type = bool
}