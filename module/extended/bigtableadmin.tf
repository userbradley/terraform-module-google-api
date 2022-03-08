resource "google_project_service" "bigtableadmin" {
  project = var.project_id
  service = "bigtableadmin.${var.api-endpoint}"
  count = var.bigtableadmin ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "bigtableadmin" {
type = bool
}