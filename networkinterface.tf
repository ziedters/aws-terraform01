resource "aws_network_interface" "int" {
  subnet_id   = "${aws_subnet.httpsubnet.id}"

  tags = {
    Name = "primary_network_interface"
  }
}