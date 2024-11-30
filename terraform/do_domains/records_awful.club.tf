resource "digitalocean_record" "tfer--50599690" {
  domain   = "awful.club"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "SOA"
  value    = "1800"
  weight   = "0"
}

resource "digitalocean_record" "tfer--50599691" {
  domain   = "awful.club"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns1.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--50599692" {
  domain   = "awful.club"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns2.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--50599693" {
  domain   = "awful.club"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns3.digitalocean.com."
  weight   = "0"
}


resource "digitalocean_record" "tfer--53273061" {
  domain   = "awful.club"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "10"
  ttl      = "3600"
  type     = "MX"
  value    = "in1-smtp.messagingengine.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--53273081" {
  domain   = "awful.club"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "20"
  ttl      = "3600"
  type     = "MX"
  value    = "in2-smtp.messagingengine.com."
  weight   = "0"
}



resource "digitalocean_record" "tfer--61254814" {
  domain   = "awful.club"
  flags    = "0"
  name     = "chat"
  port     = "0"
  priority = "0"
  ttl      = "3600"
  type     = "A"
  value    = "142.93.86.51"
  weight   = "0"
}


resource "digitalocean_record" "tfer--68245405" {
  domain   = "awful.club"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "134.209.53.112"
  weight   = "0"
}

resource "digitalocean_record" "tfer--72232806" {
  domain   = "awful.club"
  flags    = "0"
  name     = "awful-1"
  port     = "0"
  priority = "0"
  ttl      = "3600"
  type     = "A"
  value    = "134.209.53.112"
  weight   = "0"
}

resource "digitalocean_record" "tfer--74148930" {
  domain   = "awful.club"
  flags    = "0"
  name     = "git"
  port     = "0"
  priority = "0"
  ttl      = "3600"
  type     = "A"
  value    = "134.209.53.112"
  weight   = "0"
}

resource "digitalocean_record" "tfer--95970600" {
  domain   = "awful.club"
  flags    = "0"
  name     = "ns1"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "167.172.219.72"
  weight   = "0"
}

resource "digitalocean_record" "tfer--95970760" {
  domain   = "awful.club"
  flags    = "0"
  name     = "ns2"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "138.197.209.16"
  weight   = "0"
}


resource "digitalocean_record" "mattermost-dns" {
  domain   = "awful.club"
  flags    = "0"
  name     = "mattermost"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "A"
  value    = "104.248.79.77"
  weight   = "0"
}
