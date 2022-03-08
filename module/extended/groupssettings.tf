resource "google_project_service" "groupssettings" {
  project = var.project_id
  service = "groupssettings.${var.api-endpoint}"
  count = var.groupssettings ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "groupssettings" {
type = bool
}