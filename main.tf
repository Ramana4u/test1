provider "aws"{
  region = "us-east-2"
}
module "A" {
  source = "git::https://github.com/Ramana4u/test1.git?ref=main2"
  output "TG_ARN"{
    value = aws_lb_target_group.test.arn
  }
}
  module "B" {
    source = "git::https://github.com/Ramana4u/test1.git?ref=main1"
      target_group_arns = module.A.TG_ARN
 }
