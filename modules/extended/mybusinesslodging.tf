resource "google_project_service" "mybusinesslodging" {
  project = var.project_id
  service = "mybusinesslodging.${var.api-endpoint}"
  count = var.mybusinesslodging ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mybusinesslodging" {
type = bool
}