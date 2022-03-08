resource "google_project_service" "deploymentmanager" {
  project = var.project_id
  service = "deploymentmanager.${var.api-endpoint}"
  count = var.deploymentmanager ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "deploymentmanager" {
type = bool
}