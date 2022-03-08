resource "google_project_service" "firebaseapptesters" {
  project = var.project_id
  service = "firebaseapptesters.${var.api-endpoint}"
  count = var.firebaseapptesters ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebaseapptesters" {
type = bool
}