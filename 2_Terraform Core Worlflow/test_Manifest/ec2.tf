# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0c02fb55956c7d316" // Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
  #count = 10
  availability_zone = "us-east-1b"
  count = 5

  tags = {
    name = "Application"
  }
}
