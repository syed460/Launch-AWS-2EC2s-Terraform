
/*
creating custom keypair in both region

resource "aws_key_pair" "master_key" {
provider   = aws.master
key_name   = "master_key"
public_key = file("~/.ssh/id_rsa.pub")

}

resource "aws_key_pair" "worker_key" {
provider   = aws.worker
key_name   = "worker_key"
public_key = file("~/.ssh/id_rsa.pub")

}
*/


#linux 2
resource "aws_instance" "server_2" {

  provider = aws.master # has the region

  ami = data.aws_ssm_parameter.amazon_linux_master.value


  instance_type = var.Instance_Type
  key_name      = var.key_Pair

  associate_public_ip_address = var.associate_public_ip_address

  vpc_security_group_ids = var.SG_ID
  subnet_id              = var.subnet_id
  tags                   = var.Instance_tags

  #monitoring             = true
  #iam_instance_profile = var.IAM_Role

  #Root Device block
  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
    tags                  = var.Volume_tags
  }



  /*
  depends_on = [
    aws_main_route_table_association.set_master_RT_with_default_vpc1, aws_security_group.jen_sg
  ]
  */
}

output "server_2_PubIP" {
  value       = aws_instance.server_2.public_ip
  description = "Public IP of the Widows server"
  # sensitive = true

}

output "server_2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.server_2.id
}

#server 2nd
resource "aws_instance" "server_1" {

  provider = aws.master # has the region

  ami = data.aws_ssm_parameter.amazon_linux_master.value


  instance_type = var.Instance_Type
  key_name      = var.key_Pair

  associate_public_ip_address = var.associate_public_ip_address

  vpc_security_group_ids = var.SG_ID
  subnet_id              = var.subnet_id
  tags                   = var.Instance_tags

  #monitoring             = true
  #iam_instance_profile = var.IAM_Role

  #Root Device block
  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
    tags                  = var.Volume_tags
  }



  /*
  depends_on = [
    aws_main_route_table_association.set_master_RT_with_default_vpc1, aws_security_group.jen_sg
  ]
  */
}

output "server_1_PubIP" {
  value       = aws_instance.server_1.public_ip
  description = "Public IP of the Widows server"
  # sensitive = true

}

output "server_1_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.server_1.id
}