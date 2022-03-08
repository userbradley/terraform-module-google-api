resource "google_project_service" "securitycenter" {
  project = var.project_id
  service = "securitycenter.${var.api-endpoint}"
  count = var.securitycenter ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "securitycenter" {
type = bool
}