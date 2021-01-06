resource "aws_internet_gateway" "mainvpc_gw" {
  vpc_id = aws_vpc.mainvpc.id

  tags = {
    Name = "mainvpc"
  }
}

resource "aws_internet_gateway" "mainvpc_west_gw" {
  vpc_id = aws_vpc.mainvpc_west.id

  tags = {
    Name = "mainvpc_west_gw"
  }
}