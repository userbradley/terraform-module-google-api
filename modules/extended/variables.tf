variable "project_id" {
  type = string
}
variable "api-endpoint" {
  type = string
  default = "googleapis.com"
}
variable "timeout_create" {
  type = string
  default = "30m"
}
variable "timeout_update" {
  type = string
  default = "40m"
}

variable "disable_dependent_services"{
  type = string
  default = true
}