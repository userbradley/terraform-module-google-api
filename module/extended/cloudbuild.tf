resource "google_project_service" "cloudbuild" {
  project = var.project_id
  service = "cloudbuild.${var.api-endpoint}"
  count = var.cloudbuild ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudbuild" {
type = bool
}