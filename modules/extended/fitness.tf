resource "google_project_service" "fitness" {
  project = var.project_id
  service = "fitness.${var.api-endpoint}"
  count = var.fitness ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "fitness" {
type = bool
}