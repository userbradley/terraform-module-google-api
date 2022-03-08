resource "google_project_service" "anthosidentityservice" {
  project = var.project_id
  service = "anthosidentityservice.${var.api-endpoint}"
  count = var.anthosidentityservice ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "anthosidentityservice" {
type = bool
}