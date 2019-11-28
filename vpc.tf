 resource "aws_vpc" "lab21" {
   cidr_block = "192.168.0.0/16"  
   tags = {
     Name = "lab 2.1 VPC"
   }
 }