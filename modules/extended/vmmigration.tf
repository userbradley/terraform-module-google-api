resource "google_project_service" "vmmigration" {
  project = var.project_id
  service = "vmmigration.${var.api-endpoint}"
  count = var.vmmigration ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "vmmigration" {
type = bool
}