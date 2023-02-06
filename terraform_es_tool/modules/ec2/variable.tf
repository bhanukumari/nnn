variable "pub_ami" {
  description = "description"
}

variable "pub_instance_type" {
  default     = " "
  description = "description"
}

variable "pub_subnet_id" {
  type = string
  default     = " "
  description = "description"
}

variable "key_name" {
  type = string
  default     = " "
  description = "description"
}

variable "pub_instance_tag" {
  default     = " "
  description = "description"
}


variable "pri_ami" {
  type = list(string)
  description = "description"
}

variable "pri_instance_type" {
  type = list(string)
  description = "description"
}

variable "pri_subnet_id" {
  type = list(string)
  description = "description"
}

variable "pri_instance_tag" {
  type = list(string)
  description = "description"
}

variable "security_group_id" {
  type = list(string)
  description = "description"
}