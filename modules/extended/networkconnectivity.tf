resource "google_project_service" "networkconnectivity" {
  project = var.project_id
  service = "networkconnectivity.${var.api-endpoint}"
  count = var.networkconnectivity ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "networkconnectivity" {
type = bool
}