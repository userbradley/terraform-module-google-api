resource "google_project_service" "aiui" {
  project = var.project_id
  service = "aiui.${var.api-endpoint}"
  count = var.aiui ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "aiui" {
type = bool
}