resource "google_project_service" "apigateway" {
  project = var.project_id
  service = "apigateway.${var.api-endpoint}"
  count = var.apigateway ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "apigateway" {
type = bool
}