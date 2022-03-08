resource "google_project_service" "plusdomains" {
  project = var.project_id
  service = "plusdomains.${var.api-endpoint}"
  count = var.plusdomains ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "plusdomains" {
type = bool
}