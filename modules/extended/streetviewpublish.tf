resource "google_project_service" "streetviewpublish" {
  project = var.project_id
  service = "streetviewpublish.${var.api-endpoint}"
  count = var.streetviewpublish ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "streetviewpublish" {
type = bool
}