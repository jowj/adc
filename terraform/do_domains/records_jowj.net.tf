resource "digitalocean_record" "tfer--273021791" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "services"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "NS"
  value    = "ns1.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--273021801" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "services"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "NS"
  value    = "ns2.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--273021839" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "services"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "NS"
  value    = "ns3.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798711" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "SOA"
  value    = "1800"
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798712" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns1.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798713" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns2.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798714" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "1800"
  type     = "NS"
  value    = "ns3.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798774" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "10"
  ttl      = "900"
  type     = "MX"
  value    = "in1-smtp.messagingengine.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798785" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "20"
  ttl      = "900"
  type     = "MX"
  value    = "in2-smtp.messagingengine.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798884" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "TXT"
  value    = "\"10800 IN SPF v=spf1 include:spf.messagingengine.com -all\""
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798891" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "@"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "TXT"
  value    = "\"10800 IN TXT v=spf1 include:spf.messagingengine.com -all\""
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798898" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "_keybase"
  port     = "0"
  priority = "0"
  ttl      = "3600"
  type     = "TXT"
  value    = "\"keybase-site-verification=7dz68g0-5RECSjRSe78qWJfdxctQqzSI_AElg3YO_xY\""
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798944" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "home"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "NS"
  value    = "ns1.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798958" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "home"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "NS"
  value    = "ns2.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798970" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "home"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "NS"
  value    = "ns3.digitalocean.com."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93798992" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "me"
  port     = "0"
  priority = "0"
  ttl      = "900"
  type     = "CNAME"
  value    = "jowj.github.io."
  weight   = "0"
}

resource "digitalocean_record" "tfer--93799014" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "mesmtp._domainkey"
  port     = "0"
  priority = "0"
  ttl      = "3600"
  type     = "TXT"
  value    = "\"v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDJXTP9EI/ktxrX4gUmQaVb2PqzW0qa0llWXD+v+/bOlY0l0HB9BL4U0+5G/hZQ2VliuqoRqz30QuvOdcZUF9CNGDFJwpBDjCGZHMYOemiv9gBSVN6qEOLrP7SSNRh+uokaPTOCT/IGJVfbvhutg2FxY4lihCkeKU1VN0q2NfIXnQIDAQAB\""
  weight   = "0"
}

resource "digitalocean_record" "tfer--95790425" {
  domain   = "jowj.net"
  flags    = "0"
  name     = "backups"
  port     = "0"
  priority = "0"
  ttl      = "3600"
  type     = "CNAME"
  value    = "backups.jowj.sfo2.cdn.digitaloceanspaces.com."
  weight   = "0"
}


resource "digitalocean_record" "bsky" {
  domain = "jowj.net"
  name   = "_atproto"
  ttl    = "900"
  type   = "TXT"
  value  = "did=did:plc:ee22poqz5ydma4tvlyb7h4lm"
}

resource "digitalocean_record" "jowj-redir" {
  domain = "jowj.net"
  name   = "@"
  ttl    = "900"
  type   = "A"
  value  = "64.225.41.192"
}

# For moving to AWS
# resource "digitalocean_record" "halo-ns-1" {
#   domain   = "jowj.net"
#   flags    = "0"
#   name     = "halo"
#   port     = "0"
#   priority = "0"
#   ttl      = "900"
#   type     = "NS"
#   value    = "ns-1570.awsdns-04.co.uk."
#   weight   = "0"
# }

# resource "digitalocean_record" "halo-ns-2" {
#   domain   = "jowj.net"
#   flags    = "0"
#   name     = "halo"
#   port     = "0"
#   priority = "0"
#   ttl      = "900"
#   type     = "NS"
#   value    = "ns-654.awsdns-17.net."
#   weight   = "0"
# }
# resource "digitalocean_record" "halo-ns-3" {
#   domain   = "jowj.net"
#   flags    = "0"
#   name     = "halo"
#   port     = "0"
#   priority = "0"
#   ttl      = "900"
#   type     = "NS"
#   value    = "ns-346.awsdns-43.com."
#   weight   = "0"
# }

# resource "digitalocean_record" "halo-ns-4" {
#   domain   = "jowj.net"
#   flags    = "0"
#   name     = "halo"
#   port     = "0"
#   priority = "0"
#   ttl      = "900"
#   type     = "NS"
#   value    = "ns-1125.awsdns-12.org."
#   weight   = "0"
# }
