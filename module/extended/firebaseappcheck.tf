resource "google_project_service" "firebaseappcheck" {
  project = var.project_id
  service = "firebaseappcheck.${var.api-endpoint}"
  count = var.firebaseappcheck ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firebaseappcheck" {
type = bool
}