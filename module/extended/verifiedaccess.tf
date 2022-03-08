resource "google_project_service" "verifiedaccess" {
  project = var.project_id
  service = "verifiedaccess.${var.api-endpoint}"
  count = var.verifiedaccess ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "verifiedaccess" {
type = bool
}