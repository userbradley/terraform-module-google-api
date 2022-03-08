resource "google_project_service" "storagetransfer" {
  project = var.project_id
  service = "storagetransfer.${var.api-endpoint}"
  count = var.storagetransfer ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "storagetransfer" {
type = bool
}