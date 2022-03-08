resource "google_project_service" "cloudchannel" {
  project = var.project_id
  service = "cloudchannel.${var.api-endpoint}"
  count = var.cloudchannel ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudchannel" {
type = bool
}