#automatic way to get AMI id of amazon linux
data "aws_ssm_parameter" "amazon_linux_master" {
  provider = aws.master #Region
  name     = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
  #virtualization-type = "hvm"
  #most_recent = true

}

/*
data "aws_ssm_parameter" "amazon_linux_worker" {
  provider = aws.worker
  name     = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"

}
*/