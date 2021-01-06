resource "aws_internet_gateway" "chp4_west" {
  vpc_id = aws_vpc.chp4_west.id
  provider = aws.west

  tags = {
    Name = "chp4_west"
  }
}