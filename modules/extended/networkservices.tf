resource "google_project_service" "networkservices" {
  project = var.project_id
  service = "networkservices.${var.api-endpoint}"
  count = var.networkservices ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "networkservices" {
type = bool
}