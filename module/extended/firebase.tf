resource "google_project_service" "firebase" {
  project = var.project_id
  service = "firebase.${var.api-endpoint}"
  count = var.firebase ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebase" {
type = bool
}