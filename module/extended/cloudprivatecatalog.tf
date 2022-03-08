resource "google_project_service" "cloudprivatecatalog" {
  project = var.project_id
  service = "cloudprivatecatalog.${var.api-endpoint}"
  count = var.cloudprivatecatalog ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudprivatecatalog" {
type = bool
}