resource "aws_subnet" "subnet_public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.pub_subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.av_zone_pub

  tags = {
    Name = var.pub_subnet_tag
  }
}

resource "aws_subnet" "subnet_private" {
  count             = length(var.pri_subnet_cidr_block)
  vpc_id            = var.vpc_id
  cidr_block        = var.pri_subnet_cidr_block[count.index]
  map_public_ip_on_launch = false
  availability_zone = var.av_zone_pri[count.index]

  tags = {
    Name = var.pri_subnet_tag[count.index]
  }
}