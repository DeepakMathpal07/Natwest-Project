terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAZQZGKQLRNULBXE7W"
  secret_key = "81l9A8pG24dyd02b3JSFRGKtPYZmeTo7ras0UuMq"

}

# EC2 Instance
resource "aws_instance" "example_instance" {
  ami           = "ami-0d3f444bc76de0a79"
  instance_type = "t2.micro"

  tags = {
    Name = "newest"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "newest"
}
