resource "google_project_service" "anthosaudit" {
  project = var.project_id
  service = "anthosaudit.${var.api-endpoint}"
  count = var.anthosaudit ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "anthosaudit" {
type = bool
}