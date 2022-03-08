resource "google_project_service" "appsmarketcomponent" {
  project = var.project_id
  service = "appsmarket-component.${var.api-endpoint}"
  count = var.appsmarketcomponent ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "appsmarketcomponent" {
type = bool
}