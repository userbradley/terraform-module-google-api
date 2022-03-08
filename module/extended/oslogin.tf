resource "google_project_service" "oslogin" {
  project = var.project_id
  service = "oslogin.${var.api-endpoint}"
  count = var.oslogin ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "oslogin" {
type = bool
}