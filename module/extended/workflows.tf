resource "google_project_service" "workflows" {
  project = var.project_id
  service = "workflows.${var.api-endpoint}"
  count = var.workflows ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "workflows" {
type = bool
}