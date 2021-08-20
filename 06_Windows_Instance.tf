#creating EC2 instance
#Windows
/*
resource "aws_instance" "server_1" {
provider = aws.master
# ami                         = data.aws_ssm_parameter.amazon_linux_master.value
ami                         = "ami-0fa60543f60171fe3"
instance_type               = "t2.micro"
key_name                    = "ansible-course-key-pair"
associate_public_ip_address = true
vpc_security_group_ids      = [aws_security_group.jen_sg.id]
subnet_id                   = aws_subnet.private_vpc1.id
tags = {
    "Name" = "jen_master"
    "WBS"  = "E2"
}
depends_on = [
    aws_main_route_table_association.set_master_RT_with_default_vpc1, aws_security_group.jen_sg
]
}

output "instance_ip_addr" {
value       = aws_instance.server_1.public_ip
description = "Public IP of the Widows server"
# sensitive = true

}
*/