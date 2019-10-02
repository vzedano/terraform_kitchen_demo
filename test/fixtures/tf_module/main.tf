module "kitchen_test" {
  source                = "../../.."
  region                = "${var.region}"
  terraform_bucket_name = "${var.terraform_bucket_name}"
}
