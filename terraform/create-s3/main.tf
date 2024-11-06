data "aws_availability_zones" "available" {
  state = "available"
}

# VPC – Create VPC of 10.100.0.0/16 
resource "aws_vpc" "fariha_vpc_10222024" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "fariha-10222024"
  }
}

# Subnet – Create subnet in AZ1 of 10.100.1.0/24
resource "aws_subnet" "fariha_subnet_10222024" {
  count             = var.subnet_count.public
  vpc_id            = aws_vpc.fariha_vpc_10222024.id
  cidr_block        = var.subnet_cidr
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = "fariha_public_${count.index}"
  }
}





# S3 Bucket
resource "aws_s3_bucket" "fariha-bucket" {
  bucket = "my-bucket-fariha"

  tags = {
    Name        = "fariha"
    Environment = "dev"
  }
}


# where you define the resource

