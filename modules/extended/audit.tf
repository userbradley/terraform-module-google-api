resource "google_project_service" "audit" {
  project = var.project_id
  service = "audit.${var.api-endpoint}"
  count = var.audit ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "audit" {
type = bool
}