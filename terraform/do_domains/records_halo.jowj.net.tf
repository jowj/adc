resource "digitalocean_record" "requests-halo-jowj-net" {
  domain   = "halo.jowj.net"
  flags    = "0"
  name     = "requests"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "CNAME"
  value    = "archon.home.jowj.net."
  weight   = "0"
}


resource "digitalocean_record" "git-halo-jowj-net" {
  domain   = "halo.jowj.net"
  flags    = "0"
  name     = "git"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "CNAME"
  value    = "archon.home.jowj.net."
  weight   = "0"
}

resource "digitalocean_record" "rss-halo-jowj-net" {
  domain   = "halo.jowj.net"
  flags    = "0"
  name     = "rss"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "CNAME"
  value    = "archon.home.jowj.net."
  weight   = "0"
}

resource "digitalocean_record" "whoami-halo-jowj-net" {
  domain   = "halo.jowj.net"
  flags    = "0"
  name     = "whoami"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "CNAME"
  value    = "archon.home.jowj.net."
  weight   = "0"
}
