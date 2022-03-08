resource "google_project_service" "dataproc" {
  project = var.project_id
  service = "dataproc.${var.api-endpoint}"
  count = var.dataproc ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "dataproc" {
type = bool
}