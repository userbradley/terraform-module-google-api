resource "google_project_service" "firestore" {
  project = var.project_id
  service = "firestore.${var.api-endpoint}"
  count = var.firestore ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firestore" {
type = bool
}