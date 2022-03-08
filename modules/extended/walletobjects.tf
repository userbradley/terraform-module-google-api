resource "google_project_service" "walletobjects" {
  project = var.project_id
  service = "walletobjects.${var.api-endpoint}"
  count = var.walletobjects ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "walletobjects" {
type = bool
}