provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "s3_bucket" {
  source = "./modules/s3_bucket"
  bucket_name = "your-s3-bucket-name"
}

module "cloudfront" {
  source = "./modules/cloudfront"
  s3_bucket_arn = module.s3_bucket.bucket_arn
}

module "public_subnet" {
  source = "./modules/subnet"
  vpc_id  = module.vpc.vpc_id
  cidr_block = "10.0.1.0/24"
  public = true
}

module "private_subnet" {
  source = "./modules/subnet"
  vpc_id  = module.vpc.vpc_id
  cidr_block = "10.0.2.0/24"
  public = false
}

module "ec2_instance" {
  source = "./modules/ec2"
  subnet_id = module.public_subnet.subnet_id
}

module "rds" {
  source = "./modules/rds"
  subnet_ids = [module.private_subnet.subnet_id]
}

module "elasticache" {
  source = "./modules/elasticache"
  subnet_ids = [module.private_subnet.subnet_id]
}
