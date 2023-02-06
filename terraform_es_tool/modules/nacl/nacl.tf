resource "aws_network_acl" "nacl" {
  vpc_id = var.vpc_id

  egress {
    protocol   = var.protocol
    rule_no    = var.rule_no
    action     = var.action
    cidr_block = var.nacl_cidr_block
    from_port  = var.from_port
    to_port    = var.to_port
  }

  ingress {
    protocol   = var.protocol
    rule_no    = var.rule_no
    action     = var.action
    cidr_block = var.nacl_cidr_block
    from_port  = var.from_port
    to_port    = var.to_port
  }

  tags = {
    Name = var.nacl_tag
  }
}

resource "aws_network_acl_association" "nacl" {
  count = length(var.subnet_id)
  network_acl_id = aws_network_acl.nacl.id
  subnet_id      = var.subnet_id[count.index]
}