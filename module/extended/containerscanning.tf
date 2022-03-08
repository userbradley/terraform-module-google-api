resource "google_project_service" "containerscanning" {
  project = var.project_id
  service = "containerscanning.${var.api-endpoint}"
  count = var.containerscanning ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "containerscanning" {
type = bool
}