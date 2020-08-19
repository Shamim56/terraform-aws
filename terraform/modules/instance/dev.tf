module "dev-instance" {
    source = "git::ssh://git@github.com/terraform-aws-modules/terraform-aws-ec2-instance?ref=master"
    ami = "ami-0ff8a91507f77f867"
    name = "my-instance"
    instance_type = var.instance_type
}