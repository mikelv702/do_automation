terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }
}

variable "DO_API_TOKEN" {}

provider "digitalocean" {
  token = var.DO_API_TOKEN
}