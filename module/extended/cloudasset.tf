resource "google_project_service" "cloudasset" {
  project = var.project_id
  service = "cloudasset.${var.api-endpoint}"
  count = var.cloudasset ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudasset" {
type = bool
}