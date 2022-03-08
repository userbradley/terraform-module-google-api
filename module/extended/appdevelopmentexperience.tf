resource "google_project_service" "appdevelopmentexperience" {
  project = var.project_id
  service = "appdevelopmentexperience.${var.api-endpoint}"
  count = var.appdevelopmentexperience ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "appdevelopmentexperience" {
type = bool
}