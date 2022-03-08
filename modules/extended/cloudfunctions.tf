resource "google_project_service" "cloudfunctions" {
  project = var.project_id
  service = "cloudfunctions.${var.api-endpoint}"
  count = var.cloudfunctions ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudfunctions" {
type = bool
}