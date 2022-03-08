resource "google_project_service" "containeranalysis" {
  project = var.project_id
  service = "containeranalysis.${var.api-endpoint}"
  count = var.containeranalysis ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "containeranalysis" {
type = bool
}