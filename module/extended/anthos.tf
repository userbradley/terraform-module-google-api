resource "google_project_service" "anthos" {
  project = var.project_id
  service = "anthos.${var.api-endpoint}"
  count = var.anthos ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "anthos" {
type = bool
}