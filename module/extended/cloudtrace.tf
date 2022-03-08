resource "google_project_service" "cloudtrace" {
  project = var.project_id
  service = "cloudtrace.${var.api-endpoint}"
  count = var.cloudtrace ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudtrace" {
type = bool
}