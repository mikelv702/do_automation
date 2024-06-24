Droplet Terraform Module
===========

A terraform module to provide a firewall for Digital Ocean.

Module Input Variables
----------------------

- `group_name` - name of the droplet group
- `droplet_count` - how many droplets for the group
- `prefix` - prefix added to the droplet group name `prefix-group_name-count.index`

Usage
-----

```hcl
module "jumphosts" {
  source = "../../modules/digital_ocean_droplet"

  droplet_count = 1
  group_name    = "jumphost"
  prefix = "dev"
}
```


Outputs
=======

 - `droplet_ipv4_address` - IPV4 Addresses of the droplets


Authors
=======

michael@rubberduck-labs.com
