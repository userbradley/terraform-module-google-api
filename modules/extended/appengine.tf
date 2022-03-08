resource "google_project_service" "appengine" {
  project = var.project_id
  service = "appengine.${var.api-endpoint}"
  count = var.appengine ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "appengine" {
type = bool
}