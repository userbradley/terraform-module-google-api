resource "google_project_service" "speech" {
  project = var.project_id
  service = "speech.${var.api-endpoint}"
  count = var.speech ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "speech" {
type = bool
}