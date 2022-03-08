resource "google_project_service" "resourcesettings" {
  project = var.project_id
  service = "resourcesettings.${var.api-endpoint}"
  count = var.resourcesettings ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "resourcesettings" {
type = bool
}