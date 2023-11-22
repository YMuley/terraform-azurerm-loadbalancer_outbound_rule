locals {
  lb_outbound_rule = {for outbound_rule in var.lb_outbound_rule_list : outbound_rule.name => outbound_rule }
}