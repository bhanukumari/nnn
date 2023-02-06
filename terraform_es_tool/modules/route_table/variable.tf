variable "vpc_id" {
  default     = ""
  description = "description"
}

variable "rt_cidr_block" {
  default     = ""
  description = "description"
}

variable "gateway_id" {
  default     = ""
  description = "description"
}

variable "public_route_table_tag" {
  default     = ""
  description = "description"
}

variable "pub_subnet_id" {
  default     = ""
  description = "description"
}

variable "nat_id" {
  default     = ""
  description = "description"
}

variable "private_route_table_tag" {
  default     = ""
  description = "description"
}

variable "pri_subnet_id" {
  type      = list(string)
  description = "description"
}