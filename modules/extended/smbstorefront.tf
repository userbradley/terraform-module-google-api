resource "google_project_service" "smbstorefront" {
  project = var.project_id
  service = "smbstorefront.${var.api-endpoint}"
  count = var.smbstorefront ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "smbstorefront" {
type = bool
}