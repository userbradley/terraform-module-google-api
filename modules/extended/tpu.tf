resource "google_project_service" "tpu" {
  project = var.project_id
  service = "tpu.${var.api-endpoint}"
  count = var.tpu ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "tpu" {
type = bool
}