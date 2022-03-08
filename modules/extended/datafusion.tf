resource "google_project_service" "datafusion" {
  project = var.project_id
  service = "datafusion.${var.api-endpoint}"
  count = var.datafusion ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "datafusion" {
type = bool
}