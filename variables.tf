variable "api" {
  type        = list(string)
  description = "List of APIs to enable"
}

variable "project" {
  type        = string
  description = "The project you wish for the changes to be applied to"
}

variable "disable_dependent_services" {
  type        = bool
  description = "(Optional) If `true`, services that are enabled and which depend on this service should also be disabled when this service is destroyed. If `false` or unset, an error will be generated if any enabled services depend on this service when destroying it."
  default     = false
}

variable "disable_on_destroy" {
  type        = bool
  description = "(Optional) If `true`, disable the service when the Terraform resource is destroyed. Defaults to `true`. May be useful in the event that a project is long-lived but the infrastructure running in that project changes frequently."
  default     = true
}
