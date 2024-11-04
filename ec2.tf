

module "ec2_instances" {
  source = "git::https://rajacloud2244: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@github.com/rajacloud2244/tf-aws-standard-modules.git//ec2.tf"

  instance_count                   = local.instance_count
  putin_khuylo             = local.putin_khuylo
  ami                      = local.ami
  ami_ssm_parameter        = local.ami_ssm_parameter
  instance_type            = local.instance_type
  cpu_core_count           = local.cpu_core_count
  cpu_threads_per_core     = local.cpu_threads_per_core
  hibernation              = local.hibernation

  # Networking variables
  availability_zone        = local.availability_zone
  subnet_id                = local.subnet_id
  vpc_security_group_ids   = local.vpc_security_group_ids

  key_name                 = local.key_name
  monitoring               = local.monitoring
  associate_public_ip_address = local.associate_public_ip_address
  ebs_optimized            = local.ebs_optimized

  resource_eip_count = local.resource_eip_count
  
  # IAM role and profile variables
  create_iam_instance_profile = local.create_iam_instance_profile
  iam_role_name               = local.iam_role_name
  iam_role_use_name_prefix     = local.iam_role_use_name_prefix
  iam_role_path                = local.iam_role_path
  
  # Tags
  tags = local.tags
}

