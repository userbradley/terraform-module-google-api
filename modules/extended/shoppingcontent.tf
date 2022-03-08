resource "google_project_service" "shoppingcontent" {
  project = var.project_id
  service = "shoppingcontent.${var.api-endpoint}"
  count = var.shoppingcontent ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "shoppingcontent" {
type = bool
}