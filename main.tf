terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.64.0"
    }
  }

  backend "s3" {
    bucket = "felix-infra"
    key    = "terraform"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = var.project_region
}

module "iam" {
  source = "./iam"
}

output "admin_password" {
  description = "Admin's login password"
  value       = module.iam.admin_iam_login_password
}
