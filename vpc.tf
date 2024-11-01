

module "vpc" {
  source                   = "./modules/vpc"  

  create_vpc             = local.vpc_create.create_vpc
  vpc_count              = local.vpc_create.vpc_count
  cidr_blocks            = local.vpc_create.cidr_blocks
  secondary_cidr_blocks  = local.vpc_create.secondary_cidr_blocks
  
  public_subnet_count    = local.vpc_create.public_subnet_count
  private_subnet_count   = local.vpc_create.private_subnet_count
  public_subnet_cidrs    = local.vpc_create.public_subnet_cidrs
  private_subnet_cidrs   = local.vpc_create.private_subnet_cidrs
  availability_zones     = local.vpc_create.availability_zones
  
  tags                   = local.vpc_create.tags
  name                   = local.vpc_create.name

}

