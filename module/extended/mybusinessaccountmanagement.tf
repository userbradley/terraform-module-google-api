resource "google_project_service" "mybusinessaccountmanagement" {
  project = var.project_id
  service = "mybusinessaccountmanagement.${var.api-endpoint}"
  count = var.mybusinessaccountmanagement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mybusinessaccountmanagement" {
type = bool
}