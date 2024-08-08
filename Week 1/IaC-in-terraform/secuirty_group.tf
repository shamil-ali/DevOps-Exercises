resource "aws_security_group" "ssh" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1" # Allows all outbound traffic
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}