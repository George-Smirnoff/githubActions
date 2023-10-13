module "terraform_private_repo" {
  source     = "git::https://@github.com/George-Smirnoff/private-terrafrom-module"
#   source     = "git@github.com:George-Smirnoff/private-terrafrom-module.git"
# git::https://${var.token}@github.com
  aws_region = "us-west-2"
  ami        = "ami-12345678"
  instance_type = "t2.micro"
}
