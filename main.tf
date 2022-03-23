terraform {
  backend "s3" {
    bucket = "scf-tf-remote-demo"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}


