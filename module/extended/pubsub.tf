resource "google_project_service" "pubsub" {
  project = var.project_id
  service = "pubsub.${var.api-endpoint}"
  count = var.pubsub ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "pubsub" {
type = bool
}