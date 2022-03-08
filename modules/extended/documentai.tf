resource "google_project_service" "documentai" {
  project = var.project_id
  service = "documentai.${var.api-endpoint}"
  count = var.documentai ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "documentai" {
type = bool
}