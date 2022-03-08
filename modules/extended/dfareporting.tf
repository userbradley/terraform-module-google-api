resource "google_project_service" "dfareporting" {
  project = var.project_id
  service = "dfareporting.${var.api-endpoint}"
  count = var.dfareporting ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "dfareporting" {
type = bool
}