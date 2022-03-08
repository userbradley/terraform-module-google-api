resource "google_project_service" "subscribewithgoogle" {
  project = var.project_id
  service = "subscribewithgoogle.${var.api-endpoint}"
  count = var.subscribewithgoogle ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "subscribewithgoogle" {
type = bool
}