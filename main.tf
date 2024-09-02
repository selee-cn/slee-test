terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "tf-cn"
    workspaces {
      name = "kb-slee"
    }
  }
}

provider "aws" {
  region                  = var.region
  access_key              = var.Access_key_ID
  secret_key              = var.Secret_access_key
}
resource "aws_default_subnet" "defaultsub" {
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = var.sub-tag
  }
}
resource "aws_instance" "ec2" {
  ami = "ami-025d56c3db270616c"
  instance_type = var.type
  tags = {
    Name = var.ec2-tag
  }
}
