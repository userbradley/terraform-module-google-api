resource "google_project_service" "cloudscheduler" {
  project = var.project_id
  service = "cloudscheduler.${var.api-endpoint}"
  count = var.cloudscheduler ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudscheduler" {
type = bool
}