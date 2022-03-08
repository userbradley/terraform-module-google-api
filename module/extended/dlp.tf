resource "google_project_service" "dlp" {
  project = var.project_id
  service = "dlp.${var.api-endpoint}"
  count = var.dlp ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "dlp" {
type = bool
}