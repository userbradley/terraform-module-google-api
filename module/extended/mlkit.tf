resource "google_project_service" "mlkit" {
  project = var.project_id
  service = "mlkit.${var.api-endpoint}"
  count = var.mlkit ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mlkit" {
type = bool
}