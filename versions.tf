terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Adjust the version as needed
    }
  }

  required_version = ">= 1.0"

  backend "s3" {
    bucket         = "backendterraform2244"         # Your S3 bucket name
    key            = "project-name/terraform.tfstate" # Path within the bucket for the state file
    region         = "us-east-1"                     # The region where the bucket is located
    #dynamodb_table = "terraform-lock-table"          # Optional: for state locking
    encrypt        = true                             # Optional: enable server-side encryption
  }
}

provider "aws" {
  region     = "us-east-1"                          # Match the region of the S3 bucket
  access_key = var.access_key                       # Ensure your access key is set correctly
  secret_key = var.secret_key                       # Ensure your secret key is set correctly
}
