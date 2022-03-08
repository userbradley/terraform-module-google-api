resource "google_project_service" "multiclusteringress" {
  project = var.project_id
  service = "multiclusteringress.${var.api-endpoint}"
  count = var.multiclusteringress ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "multiclusteringress" {
type = bool
}