provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami             = "ami-b70554c8"
  instance_type   = "t2.micro"
  key_name        = "MyEC2Key"
  security_groups = ["launch-wizard-2"]

  tags {
    name = "Test VM"
  }
}
