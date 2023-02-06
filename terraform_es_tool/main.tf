module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_tag        = var.vpc_tag
}

module "subnet" {
  source                = "./modules/subnet"
  vpc_id                = module.vpc.vpc_id
  pub_subnet_cidr_block = var.pub_subnet_cidr_block
  av_zone_pub           = var.av_zone_pub
  pub_subnet_tag        = var.pub_subnet_tag
  pri_subnet_cidr_block = var.pri_subnet_cidr_block
  av_zone_pri           = var.av_zone_pri
  pri_subnet_tag        = var.pri_subnet_tag
}

module "ec2" {
  source            = "./modules/ec2"
  pub_ami           = var.pub_ami
  pub_instance_type = var.pub_instance_type
  pub_subnet_id     = module.subnet.pub_subnet_id
  key_name          = var.key_name
  pub_instance_tag  = var.pub_instance_tag
  pri_ami           = var.pri_ami
  pri_instance_type = var.pri_instance_type
  pri_subnet_id     = module.subnet.pri_subnet_id[*]
  pri_instance_tag  = var.pri_instance_tag
  security_group_id = module.sg.security_group_id[*]
}

module "sg" {
  source        = "./modules/security_group"
  vpc_id        = module.vpc.vpc_id
  sg_tag        = var.sg_tag
  sg_cidr_block = var.sg_cidr_block
}

module "igw" {
  source  = "./modules/igw"
  vpc_id  = module.vpc.vpc_id
  igw_tag = var.igw_tag
}

module "nat" {
  source    = "./modules/nat"
  eip_tag   = var.eip_tag
  subnet_id = module.subnet.pub_subnet_id
  nat_tag   = var.nat_tag
}

module "nacl" {
  source          = "./modules/nacl"
  vpc_id          = module.vpc.vpc_id
  protocol        = var.protocol
  rule_no         = var.rule_no
  action          = var.action
  nacl_cidr_block = var.nacl_cidr_block
  from_port       = var.from_port
  to_port         = var.to_port
  nacl_tag        = var.nacl_tag
  subnet_id       = module.subnet.pri_subnet_id[*]
}

module "route_table" {
  source                  = "./modules/route_table"
  vpc_id                  = module.vpc.vpc_id
  rt_cidr_block           = var.rt_cidr_block
  gateway_id              = module.igw.igw_id
  public_route_table_tag  = var.public_route_table_tag
  pub_subnet_id           = module.subnet.pub_subnet_id
  nat_id                  = module.nat.nat_id
  private_route_table_tag = var.private_route_table_tag
  pri_subnet_id           = module.subnet.pri_subnet_id[*]
}
