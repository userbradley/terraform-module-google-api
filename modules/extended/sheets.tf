resource "google_project_service" "sheets" {
  project = var.project_id
  service = "sheets.${var.api-endpoint}"
  count = var.sheets ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "sheets" {
type = bool
}