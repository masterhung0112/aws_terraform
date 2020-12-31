resource "aws_instance" "cheap_worker" {
  ami = "ami-09d9bd006ceda097f"
  instance_type = "t2.micro"
  availability_zone = "us-east-1c"
  associate_public_ip_address = true
  subnet_id = aws_subnet.mainvpc.id
  vpc_security_group_ids = [aws_default_security_group.mainvpc.id]
  depends_on = [aws_internet_gateway.mainvpc_gw]

  tags = {
      Name = "CheapWorker"
  }
}
output "id" {
    value = aws_instance.cheap_worker.id
}
output "ip" {
    value = aws_instance.cheap_worker.public_ip
}

# Oregon
resource "aws_instance" "cheap_worker_west" {
  ami = "ami-09d9bd006ceda097f"
  provider = aws.west
  instance_type = "t2.micro"
  availability_zone = "us-west-2c"
  associate_public_ip_address = true
  subnet_id = aws_subnet.mainvpc_west.id
  vpc_security_group_ids = [aws_default_security_group.mainvpc_west.id]
  depends_on = [aws_internet_gateway.mainvpc_west_gw]

  tags = {
      Name = "CheapWorker"
  }
}
output "id_west" {
    value = aws_instance.cheap_worker_west.id
}
output "ip_west" {
    value = aws_instance.cheap_worker_west.public_ip
}
