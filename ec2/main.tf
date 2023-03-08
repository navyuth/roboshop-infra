data "aws_caller_identity" "current" {}

data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Devops-ansible-practice"
  owners = [data.aws_caller_identity.current.account_id]
}

resource "aws_instance" "ec2" {
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = var.component
  }
}

resource "null_resource" "provisioner" {
  provisioner "remote-exec" {

    connection {
      host = aws_instance.ec2.public_ip
      user = "centos"
      password = "DevOps321"
    }

    inline = [
     "ansible-pull -i localhost, -U https://github.com/navyuth/roboshop-ansible roboshop.yml -e role_name=${var.component}"
    ]

  }

}

resource "aws_security_group" "sg" {
  name        = "${var.component}-${var.env}-sg"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "ALL"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.component}-${var.env}-sg"
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z069905439T4JHL9YIZCX"
  name    = "${var.component}-dev.devopscourse.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}
variable "instance_type" {}
variable "env" {
  default = "dev"
}