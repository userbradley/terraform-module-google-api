resource "google_project_service" "workflowexecutions" {
  project = var.project_id
  service = "workflowexecutions.${var.api-endpoint}"
  count = var.workflowexecutions ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "workflowexecutions" {
type = bool
}