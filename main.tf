provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

module "server" {
  source = "./server"

  nb_instances = var.nb_instances

  subnet_id    = var.environment1_subnet_id
  server_name  = var.server_name
  nsgs          = var.nsgs
  key_name     = var.key_name
  default_tags = var.default_tags
}
