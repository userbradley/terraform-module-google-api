resource "google_project_service" "bigtabletableadmin" {
  project = var.project_id
  service = "bigtabletableadmin.${var.api-endpoint}"
  count = var.bigtabletableadmin ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "bigtabletableadmin" {
type = bool
}