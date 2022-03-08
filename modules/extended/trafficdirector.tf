resource "google_project_service" "trafficdirector" {
  project = var.project_id
  service = "trafficdirector.${var.api-endpoint}"
  count = var.trafficdirector ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "trafficdirector" {
type = bool
}