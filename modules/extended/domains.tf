resource "google_project_service" "domains" {
  project = var.project_id
  service = "domains.${var.api-endpoint}"
  count = var.domains ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "domains" {
type = bool
}