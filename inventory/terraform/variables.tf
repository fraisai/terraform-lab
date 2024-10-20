
variable "region" {
  description = "AWS Region"
  type        = string
}

variable "service_port" {
  type    = number
  default = "8080"
}

variable "vpc_cidr" {
  type    = string
  default = "10.100.0.0/16"
}

variable "subnet_cidr" {
  type    = string
  default = "10.100.1.0/24"
}

variable "inventory_server_private_ip" {
  type    = string
  default = "10.100.1.10"
}

variable "instance_type" {
  type    = string
  default = "t4g.nano"
}

