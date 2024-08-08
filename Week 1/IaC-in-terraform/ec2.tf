resource "aws_instance" "web" {
  ami = "" # AMI ID
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet1.id
  security_groups = [ aws_security_group.ssh.name ]

  tags = {
    Name = "ShamilsTerraformInstance"
  }
}