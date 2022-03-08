resource "google_project_service" "distancematrixbackend" {
  project = var.project_id
  service = "distance-matrix-backend.${var.api-endpoint}"
  count = var.distancematrixbackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "distancematrixbackend" {
type = bool
}