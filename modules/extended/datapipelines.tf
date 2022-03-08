resource "google_project_service" "datapipelines" {
  project = var.project_id
  service = "datapipelines.${var.api-endpoint}"
  count = var.datapipelines ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "datapipelines" {
type = bool
}