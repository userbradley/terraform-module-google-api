resource "google_project_service" "project" {
  for_each = toset(var.api)
  service = each.key
disable_dependent_services = var.dds
  timeouts {
    create = "20m"
    read = "10m"
    update = "20m"
    delete = "20m"
  }

  disable_dependent_services = false # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service#disable_dependent_services
  disable_on_destroy = true
}