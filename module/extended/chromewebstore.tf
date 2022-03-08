resource "google_project_service" "chromewebstore" {
  project = var.project_id
  service = "chromewebstore.${var.api-endpoint}"
  count = var.chromewebstore ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "chromewebstore" {
type = bool
}