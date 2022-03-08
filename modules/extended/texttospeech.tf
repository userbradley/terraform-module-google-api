resource "google_project_service" "texttospeech" {
  project = var.project_id
  service = "texttospeech.${var.api-endpoint}"
  count = var.texttospeech ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "texttospeech" {
type = bool
}