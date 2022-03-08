resource "google_project_service" "realtime" {
  project = var.project_id
  service = "realtime.${var.api-endpoint}"
  count = var.realtime ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "realtime" {
type = bool
}