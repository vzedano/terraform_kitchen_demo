output "bitbucket_arn" {
  description = "The ARN of the generated S3 bucket"
  value       = "${module.kitchen_test.bitbucket_arn}"
}

output "file_1_content" {
  description = "The content of file_1.txt"
  value       = "${module.kitchen_test.file_1_content}"
}

output "file_2_content" {
  description = "The content of file_2.txt"
  value       = "${module.kitchen_test.file_2_content}"
}

output "terraform_state" {
  description = "This output is used as an attribute in the state_file control"

  value = <<EOV
${path.cwd}/terraform.tfstate.d/${terraform.workspace}/terraform.tfstate
EOV
}
