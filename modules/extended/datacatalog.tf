resource "google_project_service" "datacatalog" {
  project = var.project_id
  service = "datacatalog.${var.api-endpoint}"
  count = var.datacatalog ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "datacatalog" {
type = bool
}