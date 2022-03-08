resource "google_project_service" "servicedirectory" {
  project = var.project_id
  service = "servicedirectory.${var.api-endpoint}"
  count = var.servicedirectory ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "servicedirectory" {
type = bool
}