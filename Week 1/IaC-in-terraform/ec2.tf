resource "aws_instance" "web" {
  ami = "ami-05ea2888c91c97ca7" # AMI ID
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.ssh.id]

  tags = {
    Name = "ShamilsTerraformInstance"
  }
}