resource "google_project_service" "firebaseinappmessaging" {
  project = var.project_id
  service = "firebaseinappmessaging.${var.api-endpoint}"
  count = var.firebaseinappmessaging ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebaseinappmessaging" {
type = bool
}