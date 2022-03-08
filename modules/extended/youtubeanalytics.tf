resource "google_project_service" "youtubeanalytics" {
  project = var.project_id
  service = "youtubeanalytics.${var.api-endpoint}"
  count = var.youtubeanalytics ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "youtubeanalytics" {
type = bool
}