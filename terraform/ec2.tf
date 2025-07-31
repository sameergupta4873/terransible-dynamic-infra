resource "aws_instance" "frontend" {
  ami           = var.ami_id # Ubuntu 22.04 for eu-north-1 (check your region)
  instance_type = var.instance_type

  subnet_id              = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.frontend_sg.id]

  key_name = var.key_name  # Replace with your actual key pair name

  tags = {
    Name = "frontend-instance"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami_id # Same AMI
  instance_type = var.instance_type

  subnet_id              = aws_subnet.private_subnet.id
  vpc_security_group_ids = [aws_security_group.backend_sg.id]

  key_name = var.key_name  # Replace with your actual key pair name

  tags = {
    Name = "backend-instance"
  }
}
