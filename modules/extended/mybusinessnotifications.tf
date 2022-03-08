resource "google_project_service" "mybusinessnotifications" {
  project = var.project_id
  service = "mybusinessnotifications.${var.api-endpoint}"
  count = var.mybusinessnotifications ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mybusinessnotifications" {
type = bool
}