
resource "random_string" "server_nb" {
  count = var.nb_instances

  length = 4
  special = false
  upper = false
  number = true
}

resource "aws_instance" "web" {
  count = var.nb_instances

  ami                    = "ami-08c148bb835696b45"
  instance_type          = "t3.small"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.nsgs
  key_name               = var.key_name
  tags = merge(var.default_tags,
      {
          "Name" = "${var.server_name}-${tostring(random_string.server_nb[count.index].result)}"
      }
    )

  connection {
      host = self.public_ip
      user ="ec2-user"
      private_key = file("./id_rsa")
  }
  /*provisioner "file" {
    source      = "assets"
    destination = "/tmp/"
  }*/
}
