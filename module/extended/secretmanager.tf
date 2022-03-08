resource "google_project_service" "secretmanager" {
  project = var.project_id
  service = "secretmanager.${var.api-endpoint}"
  count = var.secretmanager ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "secretmanager" {
type = bool
}