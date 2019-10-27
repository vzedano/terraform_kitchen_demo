variable "region" {
  default = "us-west-2"
}

variable terraform_bucket_name {
  default = "terraform-kitchen-demo"
}

variable "cluster-name" {
  default = "terraform-eks-demo1"
  type    = "string"
}

variable "workstation_whitelisted_ip" {
  default = "0.0.0.0/0"
  type    = "string"
}
