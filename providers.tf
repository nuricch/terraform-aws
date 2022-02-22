terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.20.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "1.13.4"
    }
  }
}
provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = "~/.aws/credentials"
}

provider "kubernetes" {
  load_config_file       = "false"
  host                   = data.aws_eks_cluster.this.endpoint
  token                  = data.aws_eks_cluster_auth.this.token
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.this.certificate_authority.0.data)
}