resource "aws_security_group" "sg" {
  name        = "TF-sg"
  description = "Terraform Security Group for HTTP"
  vpc_id      = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = toset(local.in_ports)
    content {
      description = "Ports for SG"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = toset(local.in_ports)
    content {
      description = "Ports for SG"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

locals {
  in_ports = [80, 22]
}