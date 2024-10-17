
variable "region" {
  description = "Default region for my manifest"
  default     = "us-west-1"
}

variable "sku" {
  description = "Instance Type"
  default     = "t4g.nano"
}

variable "ami" {
  description = "Region Specific Amazon Machine Image"
  default     = "ami-0c8cbc55eb5f3c5cc"
}

