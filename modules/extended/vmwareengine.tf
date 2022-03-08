resource "google_project_service" "vmwareengine" {
  project = var.project_id
  service = "vmwareengine.${var.api-endpoint}"
  count = var.vmwareengine ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "vmwareengine" {
type = bool
}