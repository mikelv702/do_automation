
module "jumphosts" {
  source = "../../modules/digital_ocean_droplet"

  droplet_count = 2
  group_name    = "jumphost"
  prefix = "dev"
  domain_name = var.domain_name
  droplet_image_name = "ubuntu-22-04-x64"
}

module "fw_jumphosts" {
  source = "../../modules/digital_ocean_firewall"

  group_name    = "jumphost"
  prefix = "dev"
  droplet_ids = module.jumphosts.droplet_ids[*]
  allow_ssh_inbound_subnet = "192.168.1.0/32"
}