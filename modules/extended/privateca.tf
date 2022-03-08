resource "google_project_service" "privateca" {
  project = var.project_id
  service = "privateca.${var.api-endpoint}"
  count = var.privateca ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "privateca" {
type = bool
}