resource "google_project_service" "dns" {
  project = var.project_id
  service = "dns.${var.api-endpoint}"
  count = var.dns ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "dns" {
type = bool
}