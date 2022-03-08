resource "google_project_service" "cloudiot" {
  project = var.project_id
  service = "cloudiot.${var.api-endpoint}"
  count = var.cloudiot ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudiot" {
type = bool
}