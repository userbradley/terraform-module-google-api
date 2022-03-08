resource "google_project_service" "replicapoolupdater" {
  project = var.project_id
  service = "replicapoolupdater.${var.api-endpoint}"
  count = var.replicapoolupdater ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "replicapoolupdater" {
type = bool
}