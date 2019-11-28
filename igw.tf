
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.lab21.id}"

  tags = {
    Name = "igw"
  }
}