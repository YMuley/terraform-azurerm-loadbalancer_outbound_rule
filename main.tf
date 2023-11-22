resource "azurerm_lb_outbound_rule" "lb_outbound_rule" {
  for_each = local.lb_outbound_rule
  name = each.value.name
  loadbalancer_id =  var.load_balancer_output[each.value.loadbalancer_name].id
  protocol = each.value.protocol
  backend_address_pool_id = var.lb_backend_pool_output[each.value.backend_address_pool_name].id
  enable_tcp_reset = each.value.enable_tcp_reset
  allocated_outbound_ports = each.value.allocated_outbound_ports
  idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
  dynamic "frontend_ip_configuration" {
    for_each = each.value.frontend_ip_configuration
    content {
      name = frontend_ip_configuration.value.name
    }
  }
}