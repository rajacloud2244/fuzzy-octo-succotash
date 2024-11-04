terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Adjust the version as needed
    }
  }

  required_version = ">= 1.0"

  backend "s3" {
    bucket         = "tf2244"         # Your S3 bucket name
    key            = "terraform/terraform.tfstate" # Path within the bucket for the state file (terraform is folder name)
    region         = "us-east-1"                     # The region where the bucket is located
    # dynamodb_table = "terraform-lock-table"         # Optional: for state locking
    encrypt        = true                             # Optional: enable server-side encryption
  }
}

provider "aws" {
  region = "us-east-1"  # Match the region of the S3 bucket

  assume_role {
    role_arn = "arn:aws:iam::741448962992:role/AdminAccess-IAM"  # Use your IAM role ARN
    session_name = "terraform-session"                            # Optional: provide a session name
  }
}

