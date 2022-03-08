resource "google_project_service" "iamcredentials" {
  project = var.project_id
  service = "iamcredentials.${var.api-endpoint}"
  count = var.iamcredentials ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "iamcredentials" {
type = bool
}