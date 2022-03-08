resource "google_project_service" "datastream" {
  project = var.project_id
  service = "datastream.${var.api-endpoint}"
  count = var.datastream ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "datastream" {
type = bool
}