resource "google_project_service" "firebaseml" {
  project = var.project_id
  service = "firebaseml.${var.api-endpoint}"
  count = var.firebaseml ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebaseml" {
type = bool
}