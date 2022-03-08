resource "google_project_service" "cloudbilling" {
  project = var.project_id
  service = "cloudbilling.${var.api-endpoint}"
  count = var.cloudbilling ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudbilling" {
type = bool
}