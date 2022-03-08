resource "google_project_service" "gsuiteaddons" {
  project = var.project_id
  service = "gsuiteaddons.${var.api-endpoint}"
  count = var.gsuiteaddons ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "gsuiteaddons" {
type = bool
}