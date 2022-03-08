resource "google_project_service" "kgsearch" {
  project = var.project_id
  service = "kgsearch.${var.api-endpoint}"
  count = var.kgsearch ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "kgsearch" {
type = bool
}