variable "access_key" {
  description = "AWS Access Key ID"
  type        = string
  sensitive   = true
}

variable "secret_key" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}


##########################################


variable "create" {
  description = "Flag to create the resources"
  type        = bool
  default     = true
}

variable "putin_khuylo" {
  description = "Flag for additional configurations"
  type        = bool
  default     = false
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = null
}

variable "ami_ssm_parameter" {
  description = "The SSM parameter name for the AMI"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The type of instance to run"
  type        = string
  default     = "t2.micro"
}

variable "cpu_core_count" {
  description = "The number of CPU cores for the instance"
  type        = number
  default     = null
}

variable "cpu_threads_per_core" {
  description = "The number of threads per core for the instance"
  type        = number
  default     = null
}

variable "hibernation" {
  description = "Enable hibernation for the instance"
  type        = bool
  default     = false
}

variable "user_data" {
  description = "User data to make available to the instance"
  type        = string
  default     = null
}

variable "user_data_base64" {
  description = "Base64-encoded user data"
  type        = string
  default     = null
}

variable "user_data_replace_on_change" {
  description = "Flag to replace user data on changes"
  type        = bool
  default     = false
}

variable "availability_zone" {
  description = "The availability zone for the instance"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "The VPC subnet ID to launch the instance into"
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  default     = null
}

variable "monitoring" {
  description = "Enable detailed monitoring"
  type        = bool
  default     = false
}

variable "get_password_data" {
  description = "Retrieve the password data for the instance"
  type        = bool
  default     = false
}

variable "iam_instance_profile" {
  description = "The IAM instance profile to associate with the instance"
  type        = string
  default     = null
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance"
  type        = bool
  default     = false
}

variable "private_ip" {
  description = "Private IP address to assign to the instance"
  type        = string
  default     = null
}

variable "secondary_private_ips" {
  description = "List of secondary private IPs to assign to the instance"
  type        = list(string)
  default     = []
}

variable "ipv6_address_count" {
  description = "Number of IPv6 addresses to assign to the instance"
  type        = number
  default     = 0
}

variable "ipv6_addresses" {
  description = "List of specific IPv6 addresses to assign to the instance"
  type        = list(string)
  default     = []
}

variable "ebs_optimized" {
  description = "Flag to enable EBS optimization"
  type        = bool
  default     = false
}

variable "cpu_options" {
  description = "CPU options for the instance"
  type        = map(any)
  default     = {}
}

variable "capacity_reservation_specification" {
  description = "Capacity reservation specifications for the instance"
  type        = list(map(any))
  default     = []
}

variable "root_block_device" {
  description = "Configuration for the root block device"
  type        = list(map(any))
  default     = []
}

variable "ebs_block_device" {
  description = "Configuration for additional EBS block devices"
  type        = list(map(any))
  default     = []
}

variable "ephemeral_block_device" {
  description = "Configuration for ephemeral block devices"
  type        = list(map(any))
  default     = []
}

variable "network_interface" {
  description = "Configuration for additional network interfaces"
  type        = list(map(any))
  default     = []
}

variable "private_dns_name_options" {
  description = "Private DNS name options for the instance"
  type        = list(map(any))
  default     = []
}

variable "launch_template" {
  description = "Configuration for launch template to use"
  type        = list(map(any))
  default     = []
}

variable "maintenance_options" {
  description = "Maintenance options for the instance"
  type        = list(map(any))
  default     = []
}

variable "enclave_options_enabled" {
  description = "Enable enclave options"
  type        = bool
  default     = false
}

variable "source_dest_check" {
  description = "Flag to enable/disable source/destination checks"
  type        = bool
  default     = true
}

variable "disable_api_termination" {
  description = "Flag to disable API termination"
  type        = bool
  default     = false
}

variable "disable_api_stop" {
  description = "Flag to disable API stop"
  type        = bool
  default     = false
}

variable "instance_initiated_shutdown_behavior" {
  description = "Behavior when the instance is shut down"
  type        = string
  default     = "stop"
}

variable "placement_group" {
  description = "Placement group to use for the instance"
  type        = string
  default     = null
}

variable "tenancy" {
  description = "Tenancy for the instance"
  type        = string
  default     = "default"
}

variable "host_id" {
  description = "Host ID for dedicated hosts"
  type        = string
  default     = null
}

variable "cpu_credits" {
  description = "CPU credits for burstable performance instances"
  type        = string
  default     = "standard"  # or "unlimited"
}

variable "timeouts" {
  description = "Timeouts for create, update, and delete operations"
  type        = map(string)
  default     = {
    create = "10m"
    update = "10m"
    delete = "10m"
  }
}

variable "name" {
  description = "Name tag for the instance"
  type        = string
  default     = "ec2-instance"
}

variable "instance_tags" {
  description = "Additional tags for the instance"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Global tags to apply to all resources"
  type        = map(string)
  default     = {}
}

variable "enable_volume_tags" {
  description = "Flag to enable tags on volumes"
  type        = bool
  default     = false
}

variable "volume_tags" {
  description = "Tags to apply to the volume"
  type        = map(string)
  default     = {}
}

variable "create_iam_instance_profile" {
  description = "Flag to create an IAM instance profile"
  type        = bool
  default     = false
}

variable "iam_role_name" {
  description = "Name for the IAM role"
  type        = string
  default     = "ec2-instance-role"
}

variable "iam_role_use_name_prefix" {
  description = "Flag to use name prefix for IAM role"
  type        = bool
  default     = true
}

variable "iam_role_path" {
  description = "Path for the IAM role"
  type        = string
  default     = "/"
}

variable "iam_role_description" {
  description = "Description for the IAM role"
  type        = string
  default     = "Role for EC2 instance"
}

variable "iam_role_permissions_boundary" {
  description = "Permissions boundary for the IAM role"
  type        = string
  default     = null
}

variable "iam_role_tags" {
  description = "Tags to apply to the IAM role"
  type        = map(string)
  default     = {}
}

variable "iam_role_policies" {
  description = "List of IAM policy ARNs to attach to the IAM role"
  type        = list(string)
  default     = []
}

variable "create_eip" {
  description = "Flag to create an Elastic IP"
  type        = bool
  default     = false
}

variable "eip_domain" {
  description = "Domain for the Elastic IP"
  type        = string
  default     = "vpc"
}

variable "eip_tags" {
  description = "Tags for the Elastic IP"
  type        = map(string)
  default     = {}
}

variable "ignore_ami_changes" {
  description = "Flag to ignore AMI changes"
  type        = bool
  default     = false
}

