resource "google_project_service" "cloudkms" {
  project = var.project_id
  service = "cloudkms.${var.api-endpoint}"
  count = var.cloudkms ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudkms" {
type = bool
}