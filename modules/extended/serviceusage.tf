resource "google_project_service" "serviceusage" {
  project = var.project_id
  service = "serviceusage.${var.api-endpoint}"
  count = var.serviceusage ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "serviceusage" {
type = bool
}