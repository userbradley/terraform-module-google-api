resource "google_project_service" "playintegrity" {
  project = var.project_id
  service = "playintegrity.${var.api-endpoint}"
  count = var.playintegrity ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "playintegrity" {
type = bool
}