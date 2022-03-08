resource "google_project_service" "artifactregistry" {
  project = var.project_id
  service = "artifactregistry.${var.api-endpoint}"
  count = var.artifactregistry ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "artifactregistry" {
type = bool
}