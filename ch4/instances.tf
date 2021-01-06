resource "aws_instance" "chp4_west" {
  ami = "ami-0433594864f028d1a"
  provider = aws.west
  instance_type = "t2.micro"
  subnet_id = aws_subnet.chp4_west.id
  vpc_security_group_ids = [aws_default_security_group.chp4_west.id]

  tags = {
      Name = "chp4_west"
  }
}
output "id_west" {
    value = aws_instance.chp4_west.id
}
output "ip_west" {
    value = aws_instance.chp4_west.public_ip
}
