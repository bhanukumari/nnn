variable "vpc_id" {
  default     = ""
  description = "description"
}

variable "protocol" {
  default     = ""
  description = "description"
}

variable "rule_no" {
    type = number
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
  type = number
  description = "description"
}

variable "to_port" {
  type = number
  description = "description"
}

variable "nacl_tag" {
  default     = ""
  description = "description"
}

variable "subnet_id" {
  type     = list(any)
  description = "description"
}