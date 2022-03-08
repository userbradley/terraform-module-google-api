resource "google_project_service" "connectgateway" {
  project = var.project_id
  service = "connectgateway.${var.api-endpoint}"
  count = var.connectgateway ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "connectgateway" {
type = bool
}