provider "aws" {        #A
  version = "2.65.0"    #B
  region  = "us-west-2" #B
}

data "aws_ami" "ubuntu" { #A
  most_recent = true
  filter { #B
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"] #C
}

resource "aws_instance" "helloworld" {   #A
  ami           = data.aws_ami.ubuntu.id #B
  instance_type = "t2.micro"             #B
  tags = {                               #B
    Name = "HelloWorld"                  #B
  }                                      #B
}

