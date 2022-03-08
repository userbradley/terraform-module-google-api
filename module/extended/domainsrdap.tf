resource "google_project_service" "domainsrdap" {
  project = var.project_id
  service = "domainsrdap.${var.api-endpoint}"
  count = var.domainsrdap ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "domainsrdap" {
type = bool
}