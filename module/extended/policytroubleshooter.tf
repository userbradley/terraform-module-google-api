resource "google_project_service" "policytroubleshooter" {
  project = var.project_id
  service = "policytroubleshooter.${var.api-endpoint}"
  count = var.policytroubleshooter ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "policytroubleshooter" {
type = bool
}