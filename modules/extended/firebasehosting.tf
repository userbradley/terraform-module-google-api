resource "google_project_service" "firebasehosting" {
  project = var.project_id
  service = "firebasehosting.${var.api-endpoint}"
  count = var.firebasehosting ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebasehosting" {
type = bool
}