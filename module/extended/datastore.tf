resource "google_project_service" "datastore" {
  project = var.project_id
  service = "datastore.${var.api-endpoint}"
  count = var.datastore ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "datastore" {
type = bool
}