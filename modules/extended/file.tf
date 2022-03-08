resource "google_project_service" "file" {
  project = var.project_id
  service = "file.${var.api-endpoint}"
  count = var.file ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "file" {
type = bool
}