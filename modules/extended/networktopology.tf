resource "google_project_service" "networktopology" {
  project = var.project_id
  service = "networktopology.${var.api-endpoint}"
  count = var.networktopology ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "networktopology" {
type = bool
}