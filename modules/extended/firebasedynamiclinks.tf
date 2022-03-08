resource "google_project_service" "firebasedynamiclinks" {
  project = var.project_id
  service = "firebasedynamiclinks.${var.api-endpoint}"
  count = var.firebasedynamiclinks ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebasedynamiclinks" {
type = bool
}