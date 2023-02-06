variable "vpc_id" {
  default     = ""
  description = "description"
}

variable "sg_tag" {
  type     = list(string)
  description = "description"
}

variable "sg_cidr_block" {
  type     = list(string)
  description = "description"
}   