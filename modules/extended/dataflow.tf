resource "google_project_service" "dataflow" {
  project = var.project_id
  service = "dataflow.${var.api-endpoint}"
  count = var.dataflow ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "dataflow" {
type = bool
}