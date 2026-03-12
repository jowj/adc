output "tartarus_ipv4" {
  description = "Public IPv4 address of external tailscale exit node."
  value       = digitalocean_droplet.tartarus.ipv4_address
}
