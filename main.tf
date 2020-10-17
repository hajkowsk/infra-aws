provider "aws" {        #A
  version = "2.65.0"    #B
  region  = "us-west-2" #B
}


resource "aws_instance" "helloworld" {    #A
  ami           = "ami-09dd2e08d601bff67" #B
  instance_type = "t2.micro"              #B
  tags = {                                #B
    Name = "HelloWorld"                   #B
  }                                       #B
}

