locals {
  cors_rules = try(jsondecode(var.cors_rule), var.cors_rule)
}
