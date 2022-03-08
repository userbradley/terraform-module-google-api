resource "google_project_service" "containerfilesystem" {
  project = var.project_id
  service = "containerfilesystem.${var.api-endpoint}"
  count = var.containerfilesystem ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "containerfilesystem" {
type = bool
}