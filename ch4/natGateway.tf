resource "aws_egress_only_internet_gateway" "chp4_west" {
  vpc_id = aws_vpc.chp4_west.id
}

resource "aws_nat_gateway" "chp4_west" {
  allocation_id = aws_elb.chp4_west.id
  subnet_id = aws_subnet.chp4_west.id

  tags = {
    Name = "chp4_west"
  }
}
