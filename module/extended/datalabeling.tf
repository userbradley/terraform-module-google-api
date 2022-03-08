resource "google_project_service" "datalabeling" {
  project = var.project_id
  service = "datalabeling.${var.api-endpoint}"
  count = var.datalabeling ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "datalabeling" {
type = bool
}