# AWS Provider Configuration
provider "aws" {
  region = "us-east-1" 
}

# EC2 Instance Configuration
resource "aws_instance" "my_ec2" {
  ami           = "ami-012967cc5a8c9f891"  
  instance_type = "t2.micro"            
  tags = {
    Name = "search"            
  }
}

# S3 Bucket Configuration
resource "aws_s3_bucket" "my_bucket" {
  bucket = "withouterror" 
  acl    = "private"                  
}
