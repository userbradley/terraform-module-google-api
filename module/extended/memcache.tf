resource "google_project_service" "memcache" {
  project = var.project_id
  service = "memcache.${var.api-endpoint}"
  count = var.memcache ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "memcache" {
type = bool
}