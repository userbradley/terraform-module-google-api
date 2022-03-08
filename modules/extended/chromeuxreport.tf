resource "google_project_service" "chromeuxreport" {
  project = var.project_id
  service = "chromeuxreport.${var.api-endpoint}"
  count = var.chromeuxreport ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "chromeuxreport" {
type = bool
}