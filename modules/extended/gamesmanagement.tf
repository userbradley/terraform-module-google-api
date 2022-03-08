resource "google_project_service" "gamesmanagement" {
  project = var.project_id
  service = "gamesmanagement.${var.api-endpoint}"
  count = var.gamesmanagement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "gamesmanagement" {
type = bool
}