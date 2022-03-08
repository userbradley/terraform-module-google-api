resource "google_project_service" "groupsmigration" {
  project = var.project_id
  service = "groupsmigration.${var.api-endpoint}"
  count = var.groupsmigration ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "groupsmigration" {
type = bool
}