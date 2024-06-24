variable "droplet_count" {
    type = number
    default = 1
}

variable "group_name" {}
variable "prefix" {}
variable "droplet_size" {
    type = string 
    default = "s-1vcpu-1gb"
}

variable "region" {
    type = string
    default = "sfo3"
}

variable "droplet_image_name" {
    type = string
    default = "ubuntu-24-04-x64"
}
