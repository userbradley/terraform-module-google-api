resource "google_project_service" "chromepolicy" {
  project = var.project_id
  service = "chromepolicy.${var.api-endpoint}"
  count = var.chromepolicy ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "chromepolicy" {
type = bool
}