variable "region" {
  default = "us-west-2"
}

variable terraform_bucket_name {
  default = "terraform-kitchen-demo"
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = "string"
}

variable "workstation_whitelisted_ip" {
  default = "0.0.0.0/0"
  type    = "string"
}
