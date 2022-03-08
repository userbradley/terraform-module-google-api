resource "google_project_service" "krmapihosting" {
  project = var.project_id
  service = "krmapihosting.${var.api-endpoint}"
  count = var.krmapihosting ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "krmapihosting" {
type = bool
}