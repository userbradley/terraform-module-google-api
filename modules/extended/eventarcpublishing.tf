resource "google_project_service" "eventarcpublishing" {
  project = var.project_id
  service = "eventarcpublishing.${var.api-endpoint}"
  count = var.eventarcpublishing ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "eventarcpublishing" {
type = bool
}