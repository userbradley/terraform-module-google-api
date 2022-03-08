resource "google_project_service" "multiclustermetering" {
  project = var.project_id
  service = "multiclustermetering.${var.api-endpoint}"
  count = var.multiclustermetering ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "multiclustermetering" {
type = bool
}