variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

# variable "vpc_cidr" {
#   description = "CIDR block for the VPC"
#   type        = string
#   default     = "10.0.0.0/16" 
#   /* 
#   total VPC CIDR block :- 2 ^ (32 - 16) = 2 ^ 16 = 65536 IPs as first 8 + 8 = 16 bits are fixed
#   children -> 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24 ... total 256 subnets, as we are using 3rd bit of capacity 256 subnets.
#   how /24 ? -> in one subnet like 10.0.1.0/24, we have total 256 IPs, hence size = (32 - (changing bit size = 8)) = 24
#   finally we have 256 subnets, each with 256 IPs, hence total = 65536 IPs
#   this are private subnets, as we are not using public IPs in this VPC.
#   */
# }

# variable "subnet_cidr" {
#   description = "CIDR block for the public subnet"
#   type        = string
#   default     = "10.0.1.0/24" // This is a public subnet with 256 IPs
# }

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance for Ubuntu 22.04 in eu-north-1"
  type        = string
  default     = "ami-0b8e4d801c75b0f0d" // Ubuntu 22.04 eu-north-1
}

variable "key_name" {
  description = "Name of the existing EC2 Key Pair"
  type        = string
}


