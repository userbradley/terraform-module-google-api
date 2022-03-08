resource "google_project_service" "bigtable" {
  project = var.project_id
  service = "bigtable.${var.api-endpoint}"
  count = var.bigtable ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "bigtable" {
type = bool
}