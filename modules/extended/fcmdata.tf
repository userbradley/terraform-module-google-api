resource "google_project_service" "fcmdata" {
  project = var.project_id
  service = "fcmdata.${var.api-endpoint}"
  count = var.fcmdata ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "fcmdata" {
type = bool
}