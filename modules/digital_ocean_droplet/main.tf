resource "digitalocean_ssh_key" "default" {
  name       = "Cloud SSH Key"
  public_key = file("~/.ssh/id_ed25519.pub")
}
resource "digitalocean_droplet" "droplet" {
  count  = var.droplet_count
  image  = "${var.droplet_image_name}"
  name   = "${var.prefix}-${var.group_name}-${count.index + 1}"
  region = "${var.region}"
  size   = "${var.droplet_size}"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}
