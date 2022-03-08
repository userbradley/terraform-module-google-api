resource "google_project_service" "keep" {
  project = var.project_id
  service = "keep.${var.api-endpoint}"
  count = var.keep ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "keep" {
type = bool
}