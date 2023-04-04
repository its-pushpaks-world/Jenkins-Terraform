resource "aws_instance" "test" {
  ami                         = "ami-09ba48996007c8b50" #Mumbai
  #ami                         = "ami-00ad2436e75246bba" #Frankfurt
  instance_type               = "t2.micro"
  key_name                    = "TEST"
  security_groups             = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  user_data                   = var.udata

  tags = {
    Name = "My_TF_instance"
  }

  depends_on = [
    aws_key_pair.key_pair
  ]


}
