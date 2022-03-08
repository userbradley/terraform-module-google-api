resource "google_project_service" "mesh" {
  project = var.project_id
  service = "mesh.${var.api-endpoint}"
  count = var.mesh ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mesh" {
type = bool
}