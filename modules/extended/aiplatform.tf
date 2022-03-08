resource "google_project_service" "aiplatform" {
  project = var.project_id
  service = "aiplatform.${var.api-endpoint}"
  count = var.aiplatform ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "aiplatform" {
type = bool
}