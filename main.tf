provider "aws"{
  region = "us-east-2"
}
module "A" {
  source = "git::https://github.com/Ramana4u/test1.git?ref=main2"
    }
  module "B" {
    source = "git::https://github.com/Ramana4u/test1.git?ref=main1"
 }
      module "C" {
    source = "git::https://github.com/Ramana4u/test1.git?ref=main3"
        target_group_arns = module.A.TG_ARN
 }

