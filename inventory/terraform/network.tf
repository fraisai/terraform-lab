
/*
 * Setup network, including VPC, Subnets, Route Tables, and Internet Gateway
 *
 * Specifications:
 *    VPC CIDR: 10.100.0.0/16 (var.vpc_cidr)
 *    Subnet CIDR: 10.100.1.0/24 (var.subnet_cidr)
 *    Subnet AZ: (data.aws_availability_zones.azs.names[0])
 *    Route Table: Default route to IGW
 *    Security Group: Allow ping, 80, 8080, 22
 *    NACL: Allow ping, 8080, 22 ; Deny 3389
 */


/***********************************
 * Pull in AZs for the Region
 ***********************************/

data "aws_availability_zones" "azs" {
  state = "available"
}

output "availability_zone" {
  value = element(data.aws_availability_zones.azs.names, 0)
}

/***********************************
 * VPC 
 ***********************************/

/***********************************
 * Internet Gateway (IGW) for the VPC
 ***********************************/

/***********************************
 * Subnets in first AZ of the region
 ***********************************/

/***********************************
 * Route Table, Default to IGW
 ***********************************/

/***********************************
 * Network Access Control List (NACL)
 * Allow ping, ssh, 8080, deny RDP
 ***********************************/

/***********************************
 * Security Group, used by any instance
 ***********************************/
