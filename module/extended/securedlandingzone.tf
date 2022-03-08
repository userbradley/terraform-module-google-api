resource "google_project_service" "securedlandingzone" {
  project = var.project_id
  service = "securedlandingzone.${var.api-endpoint}"
  count = var.securedlandingzone ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "securedlandingzone" {
type = bool
}