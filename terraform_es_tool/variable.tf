variable "vpc_cidr_block" {
  default     = ""
  description = "description"
}

variable "vpc_tag" {
  default     = ""
  description = "description"
}

variable "pub_subnet_cidr_block" {
  default     = ""
  description = "description"
}

variable "av_zone_pub" {
  default     = ""
  description = "description"
}

variable "pub_subnet_tag" {
  default     = ""
  description = "description"
}

variable "pri_subnet_cidr_block" {
  type        = list(string)
  description = "description"
}

variable "av_zone_pri" {
  type        = list(string)
  description = "description"
}

variable "pri_subnet_tag" {
  type        = list(string)
  description = "description"
}

variable "pub_ami" {
  default     = ""
  description = "description"
}

variable "pub_instance_type" {
  default     = ""
  description = "description"
}

variable "key_name" {
  type        = string
  default     = ""
  description = "description"
}

variable "pub_instance_tag" {
  default     = ""
  description = "description"
}

variable "pri_ami" {
  type        = list(string)
  description = "description"
}

variable "pri_instance_type" {
  type        = list(string)
  description = "description"
}

variable "pri_instance_tag" {
  type        = list(string)
  description = "description"
}

variable "sg_cidr_block" {
  type        = list(string)
  description = "description"
}

variable "sg_tag" {
  type        = list(string)
  description = "description"
}

variable "eip_tag" {
  description = "description"
}

variable "nat_tag" {
  description = "description"
}

variable "igw_tag" {
  default     = ""
  description = "description"
}

variable "protocol" {
  default     = ""
  description = "description"
}

variable "rule_no" {
  type        = number
  description = "description"
}

variable "action" {
  default     = ""
  description = "description"
}

variable "nacl_cidr_block" {
  default     = ""
  description = "description"
}

variable "from_port" {
  type        = number
  description = "description"
}

variable "to_port" {
  type        = number
  description = "description"
}

variable "nacl_tag" {
  default     = ""
  description = "description"
}

variable "rt_cidr_block" {
  default     = ""
  description = "description"
}

variable "public_route_table_tag" {
  default     = ""
  description = "description"
}

variable "private_route_table_tag" {
  default     = ""
  description = "description"
}