resource "google_project_service" "tagmanager" {
  project = var.project_id
  service = "tagmanager.${var.api-endpoint}"
  count = var.tagmanager ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "tagmanager" {
type = bool
}