resource "google_project_service" "civicinfo" {
  project = var.project_id
  service = "civicinfo.${var.api-endpoint}"
  count = var.civicinfo ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "civicinfo" {
type = bool
}