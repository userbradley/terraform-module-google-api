resource "google_project_service" "tasks" {
  project = var.project_id
  service = "tasks.${var.api-endpoint}"
  count = var.tasks ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "tasks" {
type = bool
}