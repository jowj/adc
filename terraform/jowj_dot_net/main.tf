resource "digitalocean_domain" "default" {
   name = "jowj.net"
   ip_address = digitalocean_loadbalancer.www-lb.ip
}


