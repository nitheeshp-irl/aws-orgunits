provider "aws" {
  region = var.aws_region
}

data "aws_organizations_organization" "example" {}

data "aws_organizations_organizational_units" "example" {
  parent_id = data.aws_organizations_organization.example.roots[0].id
}

module "organizational_units" {
  source = "github.com/nitheeshp-irl/blog-terraform-modules//aws_org_module"

  organizational_units = var.organizational_units
  parent_id            = data.aws_organizations_organization.example.roots[0].id

}