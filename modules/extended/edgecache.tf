resource "google_project_service" "edgecache" {
  project = var.project_id
  service = "edgecache.${var.api-endpoint}"
  count = var.edgecache ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "edgecache" {
type = bool
}