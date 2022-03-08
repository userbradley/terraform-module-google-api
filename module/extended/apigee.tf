resource "google_project_service" "apigee" {
  project = var.project_id
  service = "apigee.${var.api-endpoint}"
  count = var.apigee ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "apigee" {
type = bool
}