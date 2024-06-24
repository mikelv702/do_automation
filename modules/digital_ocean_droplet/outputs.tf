output "droplet_ipv4_address" {
   value = ["${digitalocean_droplet.droplet.*.ipv4_address}"]
}

output "droplet_ids" {
  description = "The IDs of the created DigitalOcean droplets"
  value       = digitalocean_droplet.droplet[*].id
}

output "droplet_ips" {
  description = "The public IP addresses of the created DigitalOcean droplets"
  value       = digitalocean_droplet.droplet[*].ipv4_address
}

output "droplet_urns" {
  description = "The public IP addresses of the created DigitalOcean droplets"
  value       = digitalocean_droplet.droplet[*].urn
}
