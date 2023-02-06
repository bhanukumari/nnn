resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.rt_cidr_block
    gateway_id = var.gateway_id
  }

  tags = {
    Name = var.public_route_table_tag
  }
}

resource "aws_route_table_association" "public_route_table" {
  subnet_id      = var.pub_subnet_id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table" "private_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.rt_cidr_block
    gateway_id = var.nat_id
  }

  tags = {
    Name = var.private_route_table_tag
  }
}

resource "aws_route_table_association" "private_route_table" {
    count = length(var.pri_subnet_id)
  subnet_id      = var.pri_subnet_id[count.index]
  route_table_id = aws_route_table.private_route_table.id
}