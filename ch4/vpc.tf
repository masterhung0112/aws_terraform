resource "aws_vpc" "chp4_west" {
  provider = aws.west
  cidr_block = "10.1.0.0/16"

  tags = {
      Name = "chp4-west"
  }
}

resource "aws_subnet" "chp4_west" {
  provider = aws.west
  vpc_id     = aws_vpc.chp4_west.id
  cidr_block = "10.1.0.0/24"

  tags = {
    Name = "chp4-west"
  }
}