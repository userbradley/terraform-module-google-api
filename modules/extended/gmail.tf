resource "google_project_service" "gmail" {
  project = var.project_id
  service = "gmail.${var.api-endpoint}"
  count = var.gmail ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "gmail" {
type = bool
}