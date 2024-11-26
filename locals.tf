data "aws_ssm_parameter" "ami_al2023" {
  name = "/aws/service/ami-al2023-latest"
}

ata "aws_vpc" "example" {
  filter {
    name   = "tag:Name"
    values = ["Testvpcdemo"]  # Replace with your VPC name
  }
}

# Fetch subnets associated with the VPC
data "aws_subnets" "vpc_subnets" {
  filter {
    name   = "vpc-id"           # Filter by VPC ID
    values = [data.aws_vpc.example.id]  # Using the VPC ID fetched earlier
  }
}


data "aws_security_group" "example" {
  filter {
    name   = "group-name"  # Filter by the security group name
    values = ["launch-wizard-2"]  # Use a list with a single string
  }
}



locals {

                  
    ##################
  #VM Instances
  ##################

  instance_count = "1"
  putin_khuylo             = true
  ami                      = null  # Use SSM parameter for AMI
  ami_ssm_parameter        =  "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
  instance_type            = "t3.micro"
  cpu_core_count           = 1
  cpu_threads_per_core     = 2
  hibernation              = false

  # Networking variables
  availability_zone        = "us-east-1c"  # Adjust as necessary
  subnet_id                =  "subnet-0c3af2e62a8c28b7c" #data.aws_subnets.vpc_subnets.ids[0]  
  vpc_security_group_ids   =  ["sg-02d0c22d87a0ef224"] #[data.aws_security_group.example.id]  

  key_name                 = null # Replace with your key pair name
  monitoring               = false
  associate_public_ip_address = true
  ebs_optimized            = true
  
  resource_eip_count = 1

  # IAM role and profile variables
  create_iam_instance_profile = true
  iam_role_name               = "my_instance_role"
  iam_role_use_name_prefix     = true
  iam_role_path                = "/my_roles/"

 
 ###########################################
 #volumes
 ###########################################


 volumes = {
    #volume1 = { size = 10, availability_zone = data.aws_availability_zones.available.names[0] }
    #volume1 = { size = 10, availability_zone = data.aws_availability_zones.available.names[0] }

    volume1 = { size = 10, availability_zone = "us-east-1c" }  # Optional availability zone
    #volume2 = { size = 20, availability_zone = null }  # Optional availability zone

  }

  

#############################################
#Dynamo Dynamo DB 
#############################################

dynamo_db_config = {
    create_table                     = true
    table_count                      = 1
    name                             = "my-dynamodb-table"
    billing_mode                     = "PAY_PER_REQUEST"
    hash_key                         = "id"
    range_key                        = "sort_key"
    read_capacity                     = 5
    write_capacity                    = 5
    stream_enabled                   = true
    stream_view_type                 = "NEW_AND_OLD_IMAGES"
    table_class                      = "STANDARD"
    deletion_protection_enabled      = false
    ttl_enabled                      = true
    ttl_attribute_name               = "ttl"
    point_in_time_recovery_enabled   = true
    attributes                       = [{ name = "id", type = "S" }, { name = "sort_key", type = "S" }]
    local_secondary_indexes          = []
    global_secondary_indexes         = []
    replica_regions                  = []
    server_side_encryption_enabled    = true
    tags                             = { "Environment" = "Dev" }
    timeouts                         = { "create" = "10m", "delete" = "10m", "update" = "10m" }
  }

  
  #####################################
   # VPC configuration
  #####################################
 vpc_create = {
     create_vpc             = true
    vpc_count              = 1
    cidr_blocks            = ["10.0.0.0/16"]  # Only primary CIDR
    secondary_cidr_blocks  = ["10.1.0.0/24", "10.2.0.0/24"]  # Non-conflicting
    public_subnet_count    = 1
    private_subnet_count   = 1
    public_subnet_cidrs    = ["10.0.1.0/24"]  # Adjusted to avoid conflict
    private_subnet_cidrs   = ["10.0.2.0/24", "10.0.3.0/24"]  # Okay as is
    availability_zones     = ["us-east-1a", "us-east-1b", "us-east-1c"]
    name                   = "my-vpc"
    tags                   = { "Environment" = "Dev" }
}
  }
}
