resource "google_project_service" "homegraph" {
  project = var.project_id
  service = "homegraph.${var.api-endpoint}"
  count = var.homegraph ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "homegraph" {
type = bool
}