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

resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-east-1a"

  tags = {
    Name = "Default subnet for us-east-1a"
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-03190fe20ef6b1419"
  instance_type = "t2.micro"

  tags = {
    Name = "Demo WebServer"
  }
}



