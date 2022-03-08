resource "google_project_service" "cloudprofiler" {
  project = var.project_id
  service = "cloudprofiler.${var.api-endpoint}"
  count = var.cloudprofiler ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudprofiler" {
type = bool
}