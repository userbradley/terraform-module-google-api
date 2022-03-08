resource "google_project_service" "reseller" {
  project = var.project_id
  service = "reseller.${var.api-endpoint}"
  count = var.reseller ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "reseller" {
type = bool
}