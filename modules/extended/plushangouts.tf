resource "google_project_service" "plushangouts" {
  project = var.project_id
  service = "plushangouts.${var.api-endpoint}"
  count = var.plushangouts ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "plushangouts" {
type = bool
}