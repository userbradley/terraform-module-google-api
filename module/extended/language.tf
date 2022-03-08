resource "google_project_service" "language" {
  project = var.project_id
  service = "language.${var.api-endpoint}"
  count = var.language ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "language" {
type = bool
}