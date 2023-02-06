variable "vpc_id" {
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
  type = list(string)
  description = "description"
}

variable "av_zone_pri" {
  type = list(string)
  description = "description"
}

variable "pri_subnet_tag" {
  type = list(string)
  description = "description"
}