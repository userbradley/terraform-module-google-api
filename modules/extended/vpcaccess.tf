resource "google_project_service" "vpcaccess" {
  project = var.project_id
  service = "vpcaccess.${var.api-endpoint}"
  count = var.vpcaccess ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "vpcaccess" {
type = bool
}