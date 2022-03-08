resource "google_project_service" "versionhistory" {
  project = var.project_id
  service = "versionhistory.${var.api-endpoint}"
  count = var.versionhistory ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "versionhistory" {
type = bool
}