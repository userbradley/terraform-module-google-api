resource "google_project_service" "replicapool" {
  project = var.project_id
  service = "replicapool.${var.api-endpoint}"
  count = var.replicapool ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "replicapool" {
type = bool
}