resource "google_project_service" "driveactivity" {
  project = var.project_id
  service = "driveactivity.${var.api-endpoint}"
  count = var.driveactivity ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "driveactivity" {
type = bool
}