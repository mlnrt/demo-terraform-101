
variable "subnet_id" {
  type    = string
}
variable "server_name" {
  type = string
}
variable "nsgs" {
  type    = list
}

variable "key_name" {
  type    = string
}

variable "default_tags" { 
    type = map
}
variable "nb_instances" {
  type = number
  default = 1
}