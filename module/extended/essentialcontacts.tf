resource "google_project_service" "essentialcontacts" {
  project = var.project_id
  service = "essentialcontacts.${var.api-endpoint}"
  count = var.essentialcontacts ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "essentialcontacts" {
type = bool
}