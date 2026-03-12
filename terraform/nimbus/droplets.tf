resource "digitalocean_ssh_key" "default" {
  name       = "lurker-ling"
  public_key = var.ssh_pub_key
}

# Common sizes: s-1vcpu-1gb, s-1vcpu-2gb, s-2vcpu-4gb
# Common images: debian-12-x64, ubuntu-24-04-x64
resource "digitalocean_droplet" "tartarus" {
  name     = "tartarus"
  image    = "debian-12-x64"
  size     = "s-1vcpu-1gb"
  region   = var.region
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

resource "digitalocean_firewall" "tartarus" {
  name        = "tartarus-deny-all-inbound"
  droplet_ids = [digitalocean_droplet.tartarus.id]

  # Allow all outbound so Tailscale can establish connections
  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  # No inbound rules — all public inbound traffic is dropped
}
