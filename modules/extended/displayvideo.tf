resource "google_project_service" "displayvideo" {
  project = var.project_id
  service = "displayvideo.${var.api-endpoint}"
  count = var.displayvideo ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "displayvideo" {
type = bool
}