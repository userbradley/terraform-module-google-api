resource "google_project_service" "copresence" {
  project = var.project_id
  service = "copresence.${var.api-endpoint}"
  count = var.copresence ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "copresence" {
type = bool
}