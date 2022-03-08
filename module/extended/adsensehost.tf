resource "google_project_service" "adsensehost" {
  project = var.project_id
  service = "adsensehost.${var.api-endpoint}"
  count = var.adsensehost ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "adsensehost" {
type = bool
}