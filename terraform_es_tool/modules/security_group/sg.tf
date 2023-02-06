resource "aws_security_group" "sg" {
  count = length(var.sg_tag)
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = local.inbound_ports
    content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks       = var.sg_cidr_block
  }
}

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_tag[count.index]
  }
}

locals {
 inbound_ports = [22, 9200, 5601, 5000]
}
