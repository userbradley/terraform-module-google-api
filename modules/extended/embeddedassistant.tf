resource "google_project_service" "embeddedassistant" {
  project = var.project_id
  service = "embeddedassistant.${var.api-endpoint}"
  count = var.embeddedassistant ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "embeddedassistant" {
type = bool
}