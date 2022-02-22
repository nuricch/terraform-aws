vpc_cidr_block     = "10.0.0.0/16"
aws_region         = "us-east-1"
environment        = "dev"
application        = "webapp"
instance_type      = "t2.micro"
asg_dc             = 3
cluster_name       = "my-eks-cluster"
cluster_version    = "1.19"
worker_groups_name = "worker-group-1"
vpc_name = "webapp"