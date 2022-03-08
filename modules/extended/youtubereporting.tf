resource "google_project_service" "youtubereporting" {
  project = var.project_id
  service = "youtubereporting.${var.api-endpoint}"
  count = var.youtubereporting ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "youtubereporting" {
type = bool
}