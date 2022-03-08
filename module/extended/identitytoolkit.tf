resource "google_project_service" "identitytoolkit" {
  project = var.project_id
  service = "identitytoolkit.${var.api-endpoint}"
  count = var.identitytoolkit ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "identitytoolkit" {
type = bool
}