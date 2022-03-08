resource "google_project_service" "libraryagent" {
  project = var.project_id
  service = "libraryagent.${var.api-endpoint}"
  count = var.libraryagent ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "libraryagent" {
type = bool
}