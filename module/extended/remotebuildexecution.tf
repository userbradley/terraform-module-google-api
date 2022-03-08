resource "google_project_service" "remotebuildexecution" {
  project = var.project_id
  service = "remotebuildexecution.${var.api-endpoint}"
  count = var.remotebuildexecution ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "remotebuildexecution" {
type = bool
}