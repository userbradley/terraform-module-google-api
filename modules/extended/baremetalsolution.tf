resource "google_project_service" "baremetalsolution" {
  project = var.project_id
  service = "baremetalsolution.${var.api-endpoint}"
  count = var.baremetalsolution ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "baremetalsolution" {
type = bool
}