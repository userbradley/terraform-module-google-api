resource "google_project_service" "policyanalyzer" {
  project = var.project_id
  service = "policyanalyzer.${var.api-endpoint}"
  count = var.policyanalyzer ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "policyanalyzer" {
type = bool
}