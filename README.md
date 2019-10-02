# terraform_kitchen_demo
A demo on how Terraform works with AWS and can be tested w/Kitchen

## Steps taken to perform demo on Linux Mint (A superset of Ubuntu)

### Setup the local environment
1. Setup VSCode
    - Download VSCode from the official Microsoft site, select the linux Debian package if you're using Ubuntu: https://code.visualstudio.com/docs/?dv=linux64_deb
    - Run the package install
    - Install the Terraform VSCode plugin
1. Setup Terraform
    - Download the terraform zipped file from https://learn.hashicorp.com/terraform/getting-started/install.html
    - Unzip the package and place it under `/usr/local/bin`
1. Install RVM following the guide: https://rvm.io/rvm/install
    - Make sure you also install ruby 2.6.0 using RVM.
1. Declare kitchen-terraform as a gem in a Gemfile
    - Run `bundle install` to download the necessary dependencies.
1. Setup AWS credentials.
    - Install aws cli: https://docs.aws.amazon.com/es_es/cli/latest/userguide/install-linux-al2017.html
    - Create an AWS IAM user and attach `AmazonS3FullAccess` policy to it. Don't forget to give programmatic access to the user.
    - Run `aws configure` and setup your credentials based off from the `credentials.csv` file.

### Start working on the project
1. Create a `main.tf`, `outputs.tf` and `variables.tf` files and add the `aws` provider to `main.tf`.
1. Declare the desired S3 bucket resource
1. Declare the s3 bucket object resources. (the files). Don't forget to set the timestamp as the content.
1. Create kitchen test case
    - Create folder `test/fixtures/tf_module` for storing our terraform plan managed by kitchen
    - Create `main.tf`, `outputs.tf` and `variables.tf` files in `test/fixtures/tf_module` to call the real terraform plan as a module
    - Create a folder that will hold our tests: `test/integration/default/controls`
    - Create the `kitchen.yml` and `test/integration/default/inspec.yml` files and reference the created directories in `kitchen.yml` as per kitchen config.
    - Create the `testing.tfvars` file for the test variables to be used for the module.
    - Add the tests under `test/integration/default/`
    - Run `bundle exec kitchen converge` to apply the state
    - Run `bundle exec kitchen verify` to verify the state as per tests
    - Run `bundle exec kitchen destroy` to destroy the resources created by kitchen
