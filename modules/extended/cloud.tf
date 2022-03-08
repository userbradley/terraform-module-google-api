resource "google_project_service" "cloud" {
  project = var.project_id
  service = "cloud.${var.api-endpoint}"
  count = var.cloud ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloud" {
type = bool
}