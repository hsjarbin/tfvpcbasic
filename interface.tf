variable "name" {
  type        = string
  description = "VPC Name"
}

variable "cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "public_subnet" {
  type        = string
  description = "Public Subnet to Create"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "True for Using Private DNS within the VPC"
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "True for Using Private DNS within the VPC"
  default     = true
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "False if You do not want to auto-assign Public IP on Launch"
  default     = true
}

output "public_subnet_id" {
  value      = aws_subnet.public.id
  sensitive = true
}

output "vpc_id" {
  value = aws_vpc.tfb.id
}

output "cidr" {
  value = aws_vpc.tfb.cidr_block
}
