module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"
  cluster_name    = local.name
  cluster_version = "1.31"

  cluster_addons = {
    coredns= {
     most_recent = true
    }
    eks-pod-identity-agent= {
     most_recent = true
    }
    kube-proxy= {
     most_recent = true
    }
    vpc-cni= {
     most_recent = true
    }
  }
  cluster_endpoint_public_access = true

  # Optional: Adds the current caller identity as an administrator via cluster access entry
  enable_cluster_creator_admin_permissions = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    instance_types = ["t2.medium"]
    attach_cluster_primary_security_group = true 
  }

  eks_managed_node_groups = {
    eks-cluster = {
      # Starting on 1.30, AL2023 is the default AMI type for EKS managed node groups
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t2.medium"]
    # desired number of worker nodes 
      min_size     = 2
      max_size     = 3
      desired_size = 2
      capacity_type = "SPOT"
    }
  }

  tags = {
    Environment = local.env
    Terraform   = "true"
  }
}
