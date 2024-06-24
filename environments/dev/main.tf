
module "jumphosts" {
  source = "../../modules/digital_ocean_droplet"

  droplet_count = 1
  group_name    = "jumphost"
  prefix = "dev"
}

