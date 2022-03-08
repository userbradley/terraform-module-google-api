resource "google_project_service" "sts" {
  project = var.project_id
  service = "sts.${var.api-endpoint}"
  count = var.sts ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "sts" {
type = bool
}