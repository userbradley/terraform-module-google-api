resource "google_project_service" "blogger" {
  project = var.project_id
  service = "blogger.${var.api-endpoint}"
  count = var.blogger ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "blogger" {
type = bool
}