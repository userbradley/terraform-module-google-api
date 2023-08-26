resource "google_project_service" "project" {
  for_each = toset(var.api)
  service  = each.key
  project  = var.project
  timeouts {
    create = "20m"
    read   = "10m"
    update = "20m"
    delete = "20m"
  }

  disable_dependent_services = var.disable_dependent_services
  disable_on_destroy         = var.disable_on_destroy
}
