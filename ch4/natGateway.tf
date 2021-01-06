#resource "aws_egress_only_internet_gateway" "chp4_west" {
#  vpc_id = aws_vpc.chp4_west.id
#  provider = aws.west
#
#  tags = {
#    Name = "chp4_west"
#  }
#}

resource "aws_nat_gateway" "chp4_west" {
  provider = aws.west
  allocation_id = aws_eip.chp4_west.id
  subnet_id = aws_subnet.chp4_west.id

  tags = {
    Name = "chp4_west"
  }
}
resource "aws_route_table" "ch4_west" {
  vpc_id = aws_vpc.chp4_west.id
  provider = aws.west

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.chp4_west.id
  }

  tags = {
    Name = "chp4_west"
  }
}
