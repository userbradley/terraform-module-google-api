resource "google_project_service" "chromedevicetoken" {
  project = var.project_id
  service = "chromedevicetoken.${var.api-endpoint}"
  count = var.chromedevicetoken ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "chromedevicetoken" {
type = bool
}