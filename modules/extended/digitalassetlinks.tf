resource "google_project_service" "digitalassetlinks" {
  project = var.project_id
  service = "digitalassetlinks.${var.api-endpoint}"
  count = var.digitalassetlinks ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "digitalassetlinks" {
type = bool
}