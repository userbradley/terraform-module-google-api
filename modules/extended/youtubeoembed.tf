resource "google_project_service" "youtubeoembed" {
  project = var.project_id
  service = "youtubeoembed.${var.api-endpoint}"
  count = var.youtubeoembed ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "youtubeoembed" {
type = bool
}