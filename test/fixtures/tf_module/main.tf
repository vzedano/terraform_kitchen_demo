module "kitchen_test" {
  source                     = "../../.."
  region                     = "${var.region}"
  terraform_bucket_name      = "${var.terraform_bucket_name}"
  cluster-name               = "${var.cluster-name}"
  workstation_whitelisted_ip = "${var.workstation_whitelisted_ip}"
}
