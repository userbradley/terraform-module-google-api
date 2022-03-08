resource "google_project_service" "partnersjson" {
  project = var.project_id
  service = "partners-json.${var.api-endpoint}"
  count = var.partnersjson ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "partnersjson" {
type = bool
}