module "conf" {
  source = "./conf"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = module.conf.region
}

resource "aws_instance" "example" {
   ami           = "ami-0ff8a91507f77f867"
   instance_type = module.conf.instance_type
}

# module "dev-instance" {
#   source = "../../modules/instance/"
#   instance_type = module.conf.instance_type
# }


