resource "google_project_service" "contacts" {
  project = var.project_id
  service = "contacts.${var.api-endpoint}"
  count = var.contacts ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "contacts" {
type = bool
}