resource "google_project_service" "metastore" {
  project = var.project_id
  service = "metastore.${var.api-endpoint}"
  count = var.metastore ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "metastore" {
type = bool
}