resource "google_project_service" "mybusinessqanda" {
  project = var.project_id
  service = "mybusinessqanda.${var.api-endpoint}"
  count = var.mybusinessqanda ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mybusinessqanda" {
type = bool
}