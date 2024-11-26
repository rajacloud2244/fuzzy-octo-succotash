module "ebs_volumes" {
  source = "git::https://rajacloud2244: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@github.com/rajacloud2244/tf-aws-standard-modules.git//volumes"
  volumes  = local.volumes
  tags     = local.tags
}
