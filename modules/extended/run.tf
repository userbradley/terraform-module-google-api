resource "google_project_service" "run" {
  project = var.project_id
  service = "run.${var.api-endpoint}"
  count = var.run ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "run" {
type = bool
}