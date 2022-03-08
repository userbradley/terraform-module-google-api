resource "google_project_service" "travelpartner" {
  project = var.project_id
  service = "travelpartner.${var.api-endpoint}"
  count = var.travelpartner ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "travelpartner" {
type = bool
}