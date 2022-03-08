resource "google_project_service" "playablelocations" {
  project = var.project_id
  service = "playablelocations.${var.api-endpoint}"
  count = var.playablelocations ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "playablelocations" {
type = bool
}