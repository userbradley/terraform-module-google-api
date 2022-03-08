resource "google_project_service" "datamigration" {
  project = var.project_id
  service = "datamigration.${var.api-endpoint}"
  count = var.datamigration ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "datamigration" {
type = bool
}