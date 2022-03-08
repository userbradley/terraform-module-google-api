resource "google_project_service" "fcmregistrations" {
  project = var.project_id
  service = "fcmregistrations.${var.api-endpoint}"
  count = var.fcmregistrations ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "fcmregistrations" {
type = bool
}