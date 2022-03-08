resource "google_project_service" "webfonts" {
  project = var.project_id
  service = "webfonts.${var.api-endpoint}"
  count = var.webfonts ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "webfonts" {
type = bool
}