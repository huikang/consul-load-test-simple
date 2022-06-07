terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "load-test" {
  source = "/Users/huikang/go/src/github.com/hashicorp/consul/test/load/terraform"

  vpc_az               = ["us-east-2a", "us-east-2b"]
  vpc_name             = var.vpc_name
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24"]
  test_public_ip       = true
  ami_owners           = var.ami_owners
  consul_download_url  = var.consul_download_url
  cluster_name         = var.cluster_name
  cluster_tag_key      = var.cluster_tag_key
}
