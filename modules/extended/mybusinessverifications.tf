resource "google_project_service" "mybusinessverifications" {
  project = var.project_id
  service = "mybusinessverifications.${var.api-endpoint}"
  count = var.mybusinessverifications ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "mybusinessverifications" {
type = bool
}