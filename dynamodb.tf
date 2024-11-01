/*
module "dynamo_db" {
  source                   = "./modules/dynamodb"  
  create_table                     = local.dynamo_db_config.create_table
  table_count                      = local.dynamo_db_config.table_count
  name                             = local.dynamo_db_config.name
  billing_mode                     = local.dynamo_db_config.billing_mode
  hash_key                         = local.dynamo_db_config.hash_key
  range_key                        = local.dynamo_db_config.range_key
  read_capacity                    = local.dynamo_db_config.read_capacity
  write_capacity                   = local.dynamo_db_config.write_capacity
  stream_enabled                   = local.dynamo_db_config.stream_enabled
  stream_view_type                 = local.dynamo_db_config.stream_view_type
  table_class                      = local.dynamo_db_config.table_class
  deletion_protection_enabled      = local.dynamo_db_config.deletion_protection_enabled
  ttl_enabled                      = local.dynamo_db_config.ttl_enabled
  ttl_attribute_name               = local.dynamo_db_config.ttl_attribute_name
  point_in_time_recovery_enabled   = local.dynamo_db_config.point_in_time_recovery_enabled
  attributes                       = local.dynamo_db_config.attributes
  local_secondary_indexes          = local.dynamo_db_config.local_secondary_indexes
  global_secondary_indexes         = local.dynamo_db_config.global_secondary_indexes
  replica_regions                  = local.dynamo_db_config.replica_regions
  server_side_encryption_enabled    = local.dynamo_db_config.server_side_encryption_enabled
  tags                             = local.dynamo_db_config.tags
  timeouts                         = local.dynamo_db_config.timeouts
}
*/