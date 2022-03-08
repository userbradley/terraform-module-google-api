resource "google_project_service" "websecurityscanner" {
  project = var.project_id
  service = "websecurityscanner.${var.api-endpoint}"
  count = var.websecurityscanner ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "websecurityscanner" {
type = bool
}