resource "google_project_service" "abusiveexperiencereport" {
  project = var.project_id
  service = "abusiveexperiencereport.${var.api-endpoint}"
  count = var.abusiveexperiencereport ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "abusiveexperiencereport" {
type = bool
}