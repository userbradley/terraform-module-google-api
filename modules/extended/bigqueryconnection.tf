resource "google_project_service" "bigqueryconnection" {
  project = var.project_id
  service = "bigqueryconnection.${var.api-endpoint}"
  count = var.bigqueryconnection ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "bigqueryconnection" {
type = bool
}