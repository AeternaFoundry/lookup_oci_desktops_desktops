variable "desktops_desktops_lookup" {
  description = <<EOT
Map of desktops_desktops_lookup, attributes below
Required:
    - compartment_id
Optional:
    - availability_domain
    - desktop_pool_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    availability_domain = optional(string)
    desktop_pool_id     = optional(string)
    display_name        = optional(string)
    state               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

