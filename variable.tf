variable "lb_outbound_rule_list" {
  type = list(any)
  default = []
  description = "list of outbound rules"
}

variable "load_balancer_output" {
  type = map(any)
  default = {}
  description = "value"
}

variable "lb_backend_address_pool_output" {
  type = map(any)
  default = {}
  description = "value"
}