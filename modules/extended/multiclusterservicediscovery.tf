resource "google_project_service" "multiclusterservicediscovery" {
  project = var.project_id
  service = "multiclusterservicediscovery.${var.api-endpoint}"
  count = var.multiclusterservicediscovery ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "multiclusterservicediscovery" {
type = bool
}