resource "google_project_service" "containerregistry" {
  project = var.project_id
  service = "containerregistry.${var.api-endpoint}"
  count = var.containerregistry ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "containerregistry" {
type = bool
}