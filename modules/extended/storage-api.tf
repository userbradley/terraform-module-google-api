resource "google_project_service" "storageapi" {
  project = var.project_id
  service = "storage-api.${var.api-endpoint}"
  count = var.storageapi ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "storageapi" {
type = bool
}