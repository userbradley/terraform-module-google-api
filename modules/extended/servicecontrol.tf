resource "google_project_service" "servicecontrol" {
  project = var.project_id
  service = "servicecontrol.${var.api-endpoint}"
  count = var.servicecontrol ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "servicecontrol" {
type = bool
}