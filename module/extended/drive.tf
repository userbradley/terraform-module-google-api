resource "google_project_service" "drive" {
  project = var.project_id
  service = "drive.${var.api-endpoint}"
  count = var.drive ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "drive" {
type = bool
}