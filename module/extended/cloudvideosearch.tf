resource "google_project_service" "cloudvideosearch" {
  project = var.project_id
  service = "cloudvideosearch.${var.api-endpoint}"
  count = var.cloudvideosearch ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "cloudvideosearch" {
type = bool
}