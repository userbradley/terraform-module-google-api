resource "google_project_service" "gamesconfiguration" {
  project = var.project_id
  service = "gamesconfiguration.${var.api-endpoint}"
  count = var.gamesconfiguration ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "gamesconfiguration" {
type = bool
}