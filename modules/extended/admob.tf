resource "google_project_service" "admob" {
  project = var.project_id
  service = "admob.${var.api-endpoint}"
  count = var.admob ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "admob" {
type = bool
}