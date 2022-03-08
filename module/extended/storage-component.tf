resource "google_project_service" "storagecomponent" {
  project = var.project_id
  service = "storage-component.${var.api-endpoint}"
  count = var.storagecomponent ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "storagecomponent" {
type = bool
}