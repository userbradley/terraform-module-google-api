resource "google_project_service" "realtimebidding" {
  project = var.project_id
  service = "realtimebidding.${var.api-endpoint}"
  count = var.realtimebidding ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "realtimebidding" {
type = bool
}