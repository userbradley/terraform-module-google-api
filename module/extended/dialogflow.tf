resource "google_project_service" "dialogflow" {
  project = var.project_id
  service = "dialogflow.${var.api-endpoint}"
  count = var.dialogflow ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "dialogflow" {
type = bool
}