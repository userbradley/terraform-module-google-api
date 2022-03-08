resource "google_project_service" "safebrowsing" {
  project = var.project_id
  service = "safebrowsing.${var.api-endpoint}"
  count = var.safebrowsing ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "safebrowsing" {
type = bool
}