resource "google_project_service" "moviesanywhere" {
  project = var.project_id
  service = "moviesanywhere.${var.api-endpoint}"
  count = var.moviesanywhere ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "moviesanywhere" {
type = bool
}