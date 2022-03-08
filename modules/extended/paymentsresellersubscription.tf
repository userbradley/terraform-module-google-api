resource "google_project_service" "paymentsresellersubscription" {
  project = var.project_id
  service = "paymentsresellersubscription.${var.api-endpoint}"
  count = var.paymentsresellersubscription ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "paymentsresellersubscription" {
type = bool
}