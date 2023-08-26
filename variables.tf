#module "api" {
#  source  = "../"
#  project = "bradley-is-cool"
#  api     = ["compute.googleapis.com","compute2.googleapis.com]
#}

variable "project" {
  type        = string
  description = "Google cloud Project to enable the APIs in"
}

variable "api" {
  type        = list(string)
  description = "List of APIs to enable in the google cloud project"
}

variable "disable_dependent_services" {
  type    = bool
  default = false
}

variable "disable_on_destroy" {
  type    = bool
  default = true
}