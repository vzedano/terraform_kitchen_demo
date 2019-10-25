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

variable "region" {
  default = "us-west-2"
  type    = "string"
}
