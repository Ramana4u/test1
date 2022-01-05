provider "aws"{
  region = "us-east-2"
}
module "1" {
  source = "git::https://github.com/Ramana4u/test1.git?ref=main2"
}
  module "2" {
    source = "git::https://github.com/Ramana4u/test1.git?ref=main1"
      target_group_arns = module.1.target_group_arn
        }
