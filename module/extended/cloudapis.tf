resource "google_project_service" "cloudapis" {
  project = var.project_id
  service = "cloudapis.${var.api-endpoint}"
  count = var.cloudapis ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudapis" {
type = bool
}