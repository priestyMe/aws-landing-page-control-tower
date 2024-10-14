resource "aws_security_group" "allow_ssh" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id  # Updated to use the public subnet
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "web-instance"
  }
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}