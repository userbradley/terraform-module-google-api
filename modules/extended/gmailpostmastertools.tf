resource "google_project_service" "gmailpostmastertools" {
  project = var.project_id
  service = "gmailpostmastertools.${var.api-endpoint}"
  count = var.gmailpostmastertools ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "gmailpostmastertools" {
type = bool
}