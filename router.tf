resource "aws_route_table" "routertab" {
  vpc_id = "${aws_vpc.lab21.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
  
  tags = {
    Name = "MyRouteToInternet"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.httpsubnet.id}"
  route_table_id = "${aws_route_table.routertab.id}"
  
}