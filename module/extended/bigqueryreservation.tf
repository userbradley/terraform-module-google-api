resource "google_project_service" "bigqueryreservation" {
  project = var.project_id
  service = "bigqueryreservation.${var.api-endpoint}"
  count = var.bigqueryreservation ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "bigqueryreservation" {
type = bool
}