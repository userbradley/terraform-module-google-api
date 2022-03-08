resource "google_project_service" "recommendationengine" {
  project = var.project_id
  service = "recommendationengine.${var.api-endpoint}"
  count = var.recommendationengine ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "recommendationengine" {
type = bool
}