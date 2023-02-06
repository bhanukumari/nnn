resource "aws_instance" "ec2_bastion" {
  ami           = var.pub_ami
  instance_type = var.pub_instance_type
  subnet_id     = var.pub_subnet_id
  key_name      = var.key_name

  tags = {
    Name = var.pub_instance_tag
  }
}

resource "aws_instance" "ec2_private" {
  count         = length(var.pri_instance_type)
  ami           = var.pri_ami[count.index]
  instance_type = var.pri_instance_type[count.index]
  subnet_id     = var.pri_subnet_id[count.index]
  key_name      = var.key_name

  tags = {
    Name = var.pri_instance_tag[count.index]
  }
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  count                = length(var.security_group_id)
  security_group_id    = var.security_group_id[count.index]
  network_interface_id = aws_instance.ec2_private[count.index].primary_network_interface_id
}