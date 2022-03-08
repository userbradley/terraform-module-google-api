resource "google_project_service" "googlecloudmessaging" {
  project = var.project_id
  service = "googlecloudmessaging.${var.api-endpoint}"
  count = var.googlecloudmessaging ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "googlecloudmessaging" {
type = bool
}