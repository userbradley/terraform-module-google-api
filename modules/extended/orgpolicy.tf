resource "google_project_service" "orgpolicy" {
  project = var.project_id
  service = "orgpolicy.${var.api-endpoint}"
  count = var.orgpolicy ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "orgpolicy" {
type = bool
}