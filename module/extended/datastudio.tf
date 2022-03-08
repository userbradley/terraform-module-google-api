resource "google_project_service" "datastudio" {
  project = var.project_id
  service = "datastudio.${var.api-endpoint}"
  count = var.datastudio ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "datastudio" {
type = bool
}