resource "google_project_service" "vault" {
  project = var.project_id
  service = "vault.${var.api-endpoint}"
  count = var.vault ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "vault" {
type = bool
}