resource "google_project_service" "calendarjson" {
  project = var.project_id
  service = "calendar-json.${var.api-endpoint}"
  count = var.calendarjson ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "calendarjson" {
type = bool
}