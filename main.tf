resource "google_project_service" "default" {
  for_each = toset(var.api)
  project  = var.project
  service  = each.key

  timeouts {
    create = "20m"
    read   = "10m"
    update = "20m"
    delete = "20m"
  }

  disable_dependent_services = var.disable_dependent_services
  disable_on_destroy         = var.disable_on_destroy

}
