resource "google_project_service" "people" {
  project = var.project_id
  service = "people.${var.api-endpoint}"
  count = var.people ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "people" {
type = bool
}