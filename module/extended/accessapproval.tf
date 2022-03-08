resource "google_project_service" "accessapproval" {
  project = var.project_id
  service = "accessapproval.${var.api-endpoint}"
  count = var.accessapproval ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "accessapproval" {
type = bool
}