resource "google_project_service" "cloudsupport" {
  project = var.project_id
  service = "cloudsupport.${var.api-endpoint}"
  count = var.cloudsupport ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudsupport" {
type = bool
}