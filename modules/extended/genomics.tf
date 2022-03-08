resource "google_project_service" "genomics" {
  project = var.project_id
  service = "genomics.${var.api-endpoint}"
  count = var.genomics ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "genomics" {
type = bool
}