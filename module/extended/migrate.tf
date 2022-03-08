resource "google_project_service" "migrate" {
  project = var.project_id
  service = "migrate.${var.api-endpoint}"
  count = var.migrate ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "migrate" {
type = bool
}