# Using existing VPC details and creating EC2 instances.
    provisioning two linux instances using amazon image


## variables values are provided in 01_terraform.tfvars
    use below parrameter:
        -var-file="01_terraform.tfvars"

Basic terraform Commands:
    terraform init
    terraform valdate
    terraform fmt
    terraform plan
    terraform apply -var-file="01_terraform.tfvars"



Basic AWS-cli command:
    aws ec2 stop-instances --instance-ids 

01_terraform.tfvars = to pass the variable values which should not be shared with others

02_Variables.tf = is variable file

03_provider.tf = has the provider details

04_data.tf = how we are fetching the ami name data 

05_Linux_Instances.tf = has detials 0f linux server to be provisioned

06_Windows_Instance.tf = has detials 0f windows server to be provisioned

