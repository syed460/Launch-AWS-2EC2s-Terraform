#provider
provider "aws" {

  alias = "master"

  region = var.region-master

}
/*
provider "aws" {

  alias   = "worker"
  profile = var.profile
  region  = var.region-worker

}

#IAM-role
variable "IAM_Role" {
   default = ""
}

*/