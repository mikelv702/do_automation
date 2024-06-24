resource "digitalocean_ssh_key" "default" {
  name       = "Cloud SSH Key"
  public_key = file("~/.ssh/id_ed25519.pub")
}
resource "digitalocean_droplet" "droplet" {
  count  = var.droplet_count
  image  = "${var.droplet_image_name}"
  name   = "${var.prefix}-${var.group_name}-${count.index + 1}"
  region = var.region
  size   = var.droplet_size
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
  user_data = file("droplet_setup.yaml")
  tags = ["terraform"]
}

data "digitalocean_domain" "default" {
  name = var.domain_name
}

resource "digitalocean_record" "droplet_record" {
  count  = var.droplet_count
  domain = data.digitalocean_domain.default.name
  type   = "A"
  name   = digitalocean_droplet.droplet[count.index].name
  value  = digitalocean_droplet.droplet[count.index].ipv4_address
  ttl = 300
}