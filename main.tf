data "oci_desktops_desktops" "desktops_desktops_lookup" {
  for_each = var.desktops_desktops_lookup

  compartment_id      = each.value.compartment_id
  availability_domain = each.value.availability_domain
  desktop_pool_id     = each.value.desktop_pool_id
  display_name        = each.value.display_name
  state               = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

