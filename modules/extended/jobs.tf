resource "google_project_service" "jobs" {
  project = var.project_id
  service = "jobs.${var.api-endpoint}"
  count = var.jobs ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "jobs" {
type = bool
}