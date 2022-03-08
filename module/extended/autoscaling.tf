resource "google_project_service" "autoscaling" {
  project = var.project_id
  service = "autoscaling.${var.api-endpoint}"
  count = var.autoscaling ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "autoscaling" {
type = bool
}