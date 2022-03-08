resource "google_project_service" "firebasepredictions" {
  project = var.project_id
  service = "firebasepredictions.${var.api-endpoint}"
  count = var.firebasepredictions ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebasepredictions" {
type = bool
}