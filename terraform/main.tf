provider "aws" {
region = "us-east-1"
access_key = "AKIAZLUXQ5K3VSZ64BUC"
secret_key = "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"
}

resource "aws_instance" "key"{
ami = "ami-0aa7d40eeae50c9a9"
instance_type = "t2.micro"
key_name = "mono"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "my-instance"
}
}
