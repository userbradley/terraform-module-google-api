resource "google_project_service" "retail" {
  project = var.project_id
  service = "retail.${var.api-endpoint}"
  count = var.retail ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "retail" {
type = bool
}