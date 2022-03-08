resource "google_project_service" "script" {
  project = var.project_id
  service = "script.${var.api-endpoint}"
  count = var.script ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "script" {
type = bool
}