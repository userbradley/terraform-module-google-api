resource "google_project_service" "subscribewithgoogledeveloper" {
  project = var.project_id
  service = "subscribewithgoogledeveloper.${var.api-endpoint}"
  count = var.subscribewithgoogledeveloper ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "subscribewithgoogledeveloper" {
type = bool
}