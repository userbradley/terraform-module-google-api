resource "google_project_service" "firestorekeyvisualizer" {
  project = var.project_id
  service = "firestorekeyvisualizer.${var.api-endpoint}"
  count = var.firestorekeyvisualizer ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "firestorekeyvisualizer" {
type = bool
}