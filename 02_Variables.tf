#variable

#storing variables

variable "region-master" {
  type = string
}

variable "Master_VPC_id" {
  type = string
}

variable "Instance_Type" {
  type = string
}

variable "key_Pair" {
  type = string
}

variable "SG_ID" {
  type = list(string)
}

#subnet_id
variable "subnet_id" {
  type = string
}

#tag:
variable "Instance_tags" {
  type = object({
    Name  = string #"Server 1"
    Owner = string #"mohamad.syed"
  })
}

# volume
variable "Volume_tags" {
  type = object({
    Name  = string #"Server 1"
    Owner = string #"mohamad.syed"
  })
}

variable "associate_public_ip_address" {
  type = bool
}

/*
variable "region-worker" {
  type    = string
  default = "ap-south-1"

}

*/