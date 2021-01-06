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
  availability_zone = "us-west-2c"
  map_public_ip_on_launch = true
  depends_on = [ aws_internet_gateway.chp4_west ]

  tags = {
    Name = "chp4-west"
  }
}

# Elastic IP
resource "aws_eip" "chp4_west" {
  provider = aws.west
  instance = aws_instance.chp4_west.id
  vpc      = true
  depends_on = [aws_internet_gateway.chp4_west]

  tags = {
    Name = "chp4-west"
  }
}