 resource "aws_instance" "server1" {
   depends_on = ["aws_internet_gateway.igw"]
   ami           = "ami-045fa58af83eb0ff4"
   instance_type = "t2.micro"
   key_name      = "admin"
  network_interface {
    network_interface_id = "${aws_network_interface.int.id}"
    device_index         = 0
  }
 }
