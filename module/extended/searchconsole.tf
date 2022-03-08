resource "google_project_service" "searchconsole" {
  project = var.project_id
  service = "searchconsole.${var.api-endpoint}"
  count = var.searchconsole ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "searchconsole" {
type = bool
}