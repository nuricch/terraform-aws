data "aws_eks_cluster" "this" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "this" {
  name = module.eks.cluster_id
}
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "13.2.1"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  subnets = module.main.private_subnets
  vpc_id  = module.main.vpc_id
  tags = {
    environment = "local.environment"
    application = "local.application"
  }

  worker_groups = [
    {
      instance_type        = var.instance_type
      name                 = var.worker_groups_name
      asg_desired_capacity = var.asg_dc
    }
  ]
}

