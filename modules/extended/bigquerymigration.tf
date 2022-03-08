resource "google_project_service" "bigquerymigration" {
  project = var.project_id
  service = "bigquerymigration.${var.api-endpoint}"
  count = var.bigquerymigration ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "bigquerymigration" {
type = bool
}