resource "google_project_service" "opsconfigmonitoring" {
  project = var.project_id
  service = "opsconfigmonitoring.${var.api-endpoint}"
  count = var.opsconfigmonitoring ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "opsconfigmonitoring" {
type = bool
}