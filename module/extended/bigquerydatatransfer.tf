resource "google_project_service" "bigquerydatatransfer" {
  project = var.project_id
  service = "bigquerydatatransfer.${var.api-endpoint}"
  count = var.bigquerydatatransfer ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "bigquerydatatransfer" {
type = bool
}