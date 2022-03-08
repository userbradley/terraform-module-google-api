resource "google_project_service" "clouddeploy" {
  project = var.project_id
  service = "clouddeploy.${var.api-endpoint}"
  count = var.clouddeploy ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "clouddeploy" {
type = bool
}