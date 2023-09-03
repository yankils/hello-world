terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "new" {
  ami = "ami-062df10d14676e201"
  instance_type = "t2.micro"
  key_name = "practice"
  tags = {
    name = "new"
  }
  user_data = <<EOF
              sudo apt update
              EOF
}
