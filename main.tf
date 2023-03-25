module "vpc" {
  source = "git::https://github.com/navyuth/tf-module-vpc.git"
  env = var.env
  tags = var.tags
  default_vpc_id = var.default_vpc_id
  default_route_table = var.default_route_table

  for_each = var.vpc
  vpc_cidr = each.value["vpc_cidr"]
  public_subnets = each.value["public_subnets"]
  private_subnets = each.value["private_subnets"]

}

module "docdb" {
  source = "git::https://github.com/navyuth/tf-module-docdb.git"
  env    = var.env
  tags   = var.tags

  for_each = var.docdb
  engine   = each.value["engine"]
}

#output "vpc" {
#  value = module.vpc
#}