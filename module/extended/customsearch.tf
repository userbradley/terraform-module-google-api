resource "google_project_service" "customsearch" {
  project = var.project_id
  service = "customsearch.${var.api-endpoint}"
  count = var.customsearch ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "customsearch" {
type = bool
}