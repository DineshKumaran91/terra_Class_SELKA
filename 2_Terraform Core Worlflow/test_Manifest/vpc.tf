#VPC create
resource "aws_vpc" "my_test_vpc" {
  cidr_block = "10.0.0.0/16"
}

#subnet create
resource "aws_subnet" "my_test_subnet" {
  vpc_id     = aws_vpc.my_test_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Subnet1"
  }
}


resource "aws_subnet" "my_test_subnet" {
  vpc_id     = aws_vpc.my_test_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "Subnet2"
  }
}
