data "aws_availability_zones" "available" {}

module "main" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  name                 = var.vpc_name
  cidr                 = var.vpc_cidr_block
  private_subnets      = [for subnet in range(1, length(data.aws_availability_zones.available.names) , 2) : cidrsubnet(var.vpc_cidr_block, 8, subnet)]
  public_subnets       = [for subnet in range(0, length(data.aws_availability_zones.available.names) , 2) : cidrsubnet(var.vpc_cidr_block, 8, subnet)]
  azs                  = data.aws_availability_zones.available.names
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  tags = {
    "kubernetes.io/cluster/local.cluster_name" = "shared"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/local.cluster_name" = "shared"
    "kubernetes.io/role/elb"                   = 1
  }
  private_subnet_tags = {
    "kubernetes.io/cluster/local.cluster_name" = "shared"
    "kubernetes.io/role/internal-elb"          = 1
  }
}


