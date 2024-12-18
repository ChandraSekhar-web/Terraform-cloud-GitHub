terraform {
    required_version = "~> 1.10.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.81.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Chandrainfra" {
	ami = "ami-06b21ccaeff8cd686" 
	instance_type = "t2.micro"
}
