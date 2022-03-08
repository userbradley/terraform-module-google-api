resource "google_project_service" "recommender" {
  project = var.project_id
  service = "recommender.${var.api-endpoint}"
  count = var.recommender ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "recommender" {
type = bool
}