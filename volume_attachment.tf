/*
module "volume_attachment" {
  source                   = "./modules/volume_attachment"  
  instance_ids = module.ec2_instances.instance_ids  # Get instance IDs from EC2 module
  volume_ids   = module.ebs_volumes.volume_ids       # Get volume IDs from EBS module
}


*/