resource "google_project_service" "streetviewimagebackend" {
  project = var.project_id
  service = "street-view-image-backend.${var.api-endpoint}"
  count = var.streetviewimagebackend ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "streetviewimagebackend" {
type = bool
}