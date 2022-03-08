resource "google_project_service" "localservices" {
  project = var.project_id
  service = "localservices.${var.api-endpoint}"
  count = var.localservices ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "localservices" {
type = bool
}