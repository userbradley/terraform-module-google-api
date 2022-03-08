resource "google_project_service" "authorizedbuyersmarketplace" {
  project = var.project_id
  service = "authorizedbuyersmarketplace.${var.api-endpoint}"
  count = var.authorizedbuyersmarketplace ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "authorizedbuyersmarketplace" {
type = bool
}