resource "digitalocean_record" "tfer--100209615" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "syslog"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.149"
  weight   = "0"
}

resource "digitalocean_record" "tfer--100210294" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "larva"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.149"
  weight   = "0"
}

resource "digitalocean_record" "tfer--271237190" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "sainthood"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "100.79.124.119"
  weight   = "0"
}

resource "digitalocean_record" "tfer--273016322" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "tubesync"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.133"
  weight   = "0"
}

resource "digitalocean_record" "tfer--274483081" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "navi"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.89"
  weight   = "0"
}

resource "digitalocean_record" "tfer--367911478" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "_acme-challenge.hatchery"
  port     = "0"
  priority = "0"
  ttl      = "30"
  type     = "TXT"
  value    = "vRiIykybTZot__p8ZoIADSOYXgDRIqbMf1fCwdfE4Iw"
  weight   = "0"
}

resource "digitalocean_record" "tfer--87842326" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "SOA"
  value    = "1800"
  weight   = "0"
}

resource "digitalocean_record" "tfer--87842328" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns1.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--87842329" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns2.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--87842330" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns3.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--87843293" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "storage"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.221"
  weight   = "0"
}

resource "digitalocean_record" "tfer--87843462" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "lair"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.120"
  weight   = "0"
}

resource "digitalocean_record" "tfer--87843474" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "cloudkey"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.6"
  weight   = "0"
}

resource "digitalocean_record" "tfer--87843507" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "ultraling"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.156"
  weight   = "0"
}

resource "digitalocean_record" "tfer--87843681" {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "matrix2"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "192.168.1.211"
  weight   = "0"
}

resource "digitalocean_record" seraph-dns {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "seraph"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "100.68.110.113"
  weight   = "0"
}

resource "digitalocean_record" exgod-dns {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "exgod"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "100.98.219.88"
  weight   = "0"
}

resource "digitalocean_record" demiurge-dns {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "demiurge"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "100.108.60.46"
  weight   = "0"
}


# this motherfucker is currently set manually. 
# TODO: Figure out how to do this programmatically
# Especailly because getting the output of tailscale is difficult??
resource "digitalocean_record" highsea-dns {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "highsea"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "100.72.101.61"
  weight   = "0"
}

# this motherfucker is currently set manually. 
# TODO: Figure out how to do this programmatically
# Especailly because getting the output of tailscale is difficult??

resource "digitalocean_record" archon-dns {
  domain   = "home.jowj.net"
  flags    = "0"
  name     = "archon"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "100.68.19.38"
  weight   = "0"
}