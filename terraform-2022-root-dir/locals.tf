locals {
  # 命名系
  name_prefix = replace(join("-", compact([var.account_name, var.env])), "_", "-")
}
