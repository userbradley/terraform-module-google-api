resource "google_project_service" "books" {
  project = var.project_id
  service = "books.${var.api-endpoint}"
  count = var.books ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "books" {
type = bool
}