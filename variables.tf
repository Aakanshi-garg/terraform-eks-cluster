locals{
    name = "tws-cluster"
    env = "dev"
    region = "us-east-2"
    vpc_cidr = "10.0.0.0/16"
    azs             = ["us-east-2a", "us-east-2b"]
    private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
    public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
    intra_subnet = ["10.0.5.0/24", "10.0.6.0/24"]

}