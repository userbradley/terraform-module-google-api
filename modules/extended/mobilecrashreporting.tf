resource "google_project_service" "mobilecrashreporting" {
  project = var.project_id
  service = "mobilecrashreporting.${var.api-endpoint}"
  count = var.mobilecrashreporting ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mobilecrashreporting" {
type = bool
}