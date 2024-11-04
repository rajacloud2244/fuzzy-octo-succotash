/*
module "alb" {
  source = "git::https://rajacloud2244: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@github.com/rajacloud2244/tf-aws-standard-modules.git//alb"

  create                   = local.create
  access_logs              = local.access_logs
  subnets                  = local.subnets

  load_balancer_name       = local.load_balancer_name
  target_group_count       = local.target_group_count
  target_group_port        = local.target_group_port
  target_group_protocol    = local.target_group_protocol
  vpc_id                   = local.vpc_id
  health_check_path        = local.health_check_path
  health_check_interval     = local.health_check_interval
  health_check_timeout     = local.health_check_timeout
  health_check_healthy_threshold = local.health_check_healthy_threshold
  health_check_unhealthy_threshold = local.health_check_unhealthy_threshold

  target_group_arn         = local.target_group_arn
  ec2_instance_ids         = local.ec2_instance_ids

  load_balancer_arn        = local.load_balancer_arn
  listeners                = local.listeners
  tags                     = local.tags
}

*/
