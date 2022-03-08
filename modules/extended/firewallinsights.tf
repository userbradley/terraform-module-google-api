resource "google_project_service" "firewallinsights" {
  project = var.project_id
  service = "firewallinsights.${var.api-endpoint}"
  count = var.firewallinsights ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firewallinsights" {
type = bool
}