resource "google_project_service" "chromemanagement" {
  project = var.project_id
  service = "chromemanagement.${var.api-endpoint}"
  count = var.chromemanagement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "chromemanagement" {
type = bool
}