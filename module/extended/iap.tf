resource "google_project_service" "iap" {
  project = var.project_id
  service = "iap.${var.api-endpoint}"
  count = var.iap ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "iap" {
type = bool
}