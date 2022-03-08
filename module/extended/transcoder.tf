resource "google_project_service" "transcoder" {
  project = var.project_id
  service = "transcoder.${var.api-endpoint}"
  count = var.transcoder ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "transcoder" {
type = bool
}