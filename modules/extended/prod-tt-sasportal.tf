resource "google_project_service" "prodttsasportal" {
  project = var.project_id
  service = "prod-tt-sasportal.${var.api-endpoint}"
  count = var.prodttsasportal ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "prodttsasportal" {
type = bool
}