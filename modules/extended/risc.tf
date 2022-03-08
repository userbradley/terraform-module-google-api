resource "google_project_service" "risc" {
  project = var.project_id
  service = "risc.${var.api-endpoint}"
  count = var.risc ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "risc" {
type = bool
}