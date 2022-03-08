resource "google_project_service" "acceleratedmobilepageurl" {
  project = var.project_id
  service = "acceleratedmobilepageurl.${var.api-endpoint}"
  count = var.acceleratedmobilepageurl ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "acceleratedmobilepageurl" {
type = bool
}