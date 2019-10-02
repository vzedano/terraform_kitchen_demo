provider "aws" {
  region = "${var.region}"
}
resource "aws_s3_bucket" "terraform-kitchen-demo" {
  bucket        = "${var.terraform_bucket_name}"
  force_destroy = true
}

resource "aws_s3_bucket_object" "file1" {
  bucket  = "${aws_s3_bucket.terraform-kitchen-demo.bucket}"
  key     = "file1.txt"
  content = "${timestamp()}"
}

resource "aws_s3_bucket_object" "file2" {
  bucket  = "${aws_s3_bucket.terraform-kitchen-demo.bucket}"
  key     = "file2.txt"
  content = "${timestamp()}"
}
