output "bitbucket_arn" {
  description = "The ARN of the generated S3 bucket"
  value       = "${aws_s3_bucket.terraform-kitchen-demo.arn}"
}

output "file_1_content" {
  description = "The content of file_1.txt"
  value       = "${aws_s3_bucket_object.file1.content}"
}

output "file_2_content" {
  description = "The content of file_2.txt"
  value       = "${aws_s3_bucket_object.file2.content}"
}
