# terraform-aws

To authenticate against AWS EKS make sure followings are installed:
1. AWS CLI
2. kubectl
3. aws-iam-authenticator and run the following command:

* aws eks update-kubeconfig  --name < cluster name > --region < aws region >