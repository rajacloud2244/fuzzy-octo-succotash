
module "volume_attachment" {
  source = "git::https://rajacloud2244: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@github.com/rajacloud2244/tf-aws-standard-modules.git//volume_attachment"
  
  instance_ids = module.ec2_instances.instance_ids  # Get instance IDs from EC2 module
  volume_ids   = module.ebs_volumes.volume_ids       # Get volume IDs from EBS module
}
