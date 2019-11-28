resource "aws_subnet" "httpsubnet" {
  vpc_id     = "${aws_vpc.lab21.id}"
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "httpsubnet"
  }
}