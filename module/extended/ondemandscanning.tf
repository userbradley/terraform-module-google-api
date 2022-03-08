resource "google_project_service" "ondemandscanning" {
  project = var.project_id
  service = "ondemandscanning.${var.api-endpoint}"
  count = var.ondemandscanning ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "ondemandscanning" {
type = bool
}