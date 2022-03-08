resource "google_project_service" "meshca" {
  project = var.project_id
  service = "meshca.${var.api-endpoint}"
  count = var.meshca ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "meshca" {
type = bool
}