resource "google_project_service" "cloudshell" {
  project = var.project_id
  service = "cloudshell.${var.api-endpoint}"
  count = var.cloudshell ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudshell" {
type = bool
}