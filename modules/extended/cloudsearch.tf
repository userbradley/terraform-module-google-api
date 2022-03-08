resource "google_project_service" "cloudsearch" {
  project = var.project_id
  service = "cloudsearch.${var.api-endpoint}"
  count = var.cloudsearch ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudsearch" {
type = bool
}