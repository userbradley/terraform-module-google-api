resource "google_project_service" "bigquery" {
  project = var.project_id
  service = "bigquery.${var.api-endpoint}"
  count = var.bigquery ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "bigquery" {
type = bool
}