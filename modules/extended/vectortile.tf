resource "google_project_service" "vectortile" {
  project = var.project_id
  service = "vectortile.${var.api-endpoint}"
  count = var.vectortile ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "vectortile" {
type = bool
}