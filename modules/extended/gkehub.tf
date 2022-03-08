resource "google_project_service" "gkehub" {
  project = var.project_id
  service = "gkehub.${var.api-endpoint}"
  count = var.gkehub ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "gkehub" {
type = bool
}