resource "google_project_service" "gkeconnect" {
  project = var.project_id
  service = "gkeconnect.${var.api-endpoint}"
  count = var.gkeconnect ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "gkeconnect" {
type = bool
}