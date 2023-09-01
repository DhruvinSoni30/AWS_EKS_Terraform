# Creating VPC
module "vpc" {
  source       = "./modules/VPC"
  project_name = var.project_name
  env          = var.env
  type         = var.type
}

# Creating security group
module "security_groups" {
  source       = "./modules/Security-groups"
  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name
  ssh_access   = var.ssh_access
  http_access  = var.http_access
  env          = var.env
  type         = var.type
}

# Creating key pair
module "key_pair" {
  source   = "./modules/Key-Pair"
  key_name = var.key_name
}

# Creating IAM resources
module "iam" {
  source = "./modules/IAM"
}

# Creating EKS Cluster
module "eks" {
  source                = "./modules/EKS"
  master_arn            = module.iam.master_arn
  worker_arn            = module.iam.worker_arn
  public_subnet_az1_id  = module.vpc.public_subnet_az1_id
  public_subnet_az2_id  = module.vpc.public_subnet_az2_id
  env                   = var.env
  type                  = var.type
  key_name              = var.key_name
  eks_security_group_id = module.security_groups.eks_security_group_id
  instance_size         = var.instance_size
  project_name          = var.project_name
}