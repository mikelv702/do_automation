
module "jumphosts" {
  source = "../../modules/digital_ocean_droplet"

  droplet_count = 1
  group_name    = "jumphost"
  prefix = "dev"
  domain_name = var.domain_name
  droplet_image_name = "ubuntu-22-04-x64"
}

