variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
variable "region" {
  type    = string
  default = "eu-central-1"
}
variable "environment1_subnet_id" {
  type = string
}
variable "environment2_subnet_id" {
  type = string
}
variable "server_name" {
  type = string
}
variable "nsgs" {
  type = list
}
variable "nb_instances" {
  type = number
  default = 1
}

variable "key_name" {
  type = string
}
variable "default_tags" {
  type = map
  default = {
    Project = "Terraform 101",
    Owner   = "",
    Name    = ""
  }
}