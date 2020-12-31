resource "aws_vpc" "mainvpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
      Name = "cloud-main-vpc"
  }
}

resource "aws_subnet" "mainvpc" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = "10.1.0.0/24"

  tags = {
    Name = "aws_subnet-mainvpc"
  }
}

resource "aws_vpc" "mainvpc_west" {
  provider = aws.west
  cidr_block = "10.1.0.0/16"

  tags = {
      Name = "aws_subnet-west-vpc"
  }
}

resource "aws_subnet" "mainvpc_west" {
  provider = aws.west
  vpc_id     = aws_vpc.mainvpc_west.id
  cidr_block = "10.1.0.0/24"

  tags = {
    Name = "aws_subnet-west-subnet-west"
  }
}