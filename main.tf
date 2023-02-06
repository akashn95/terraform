module "vpc" {
	source = "./vpc"
}

module "ec2" {
	source = "./ec2"
	vpc_id = module.vpc.vpc_id
        #cidr_block = module.vpc.cidr_block
}

  
