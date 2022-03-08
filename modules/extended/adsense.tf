resource "google_project_service" "adsense" {
  project = var.project_id
  service = "adsense.${var.api-endpoint}"
  count = var.adsense ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "adsense" {
type = bool
}