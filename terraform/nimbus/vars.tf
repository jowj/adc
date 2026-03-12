variable "DO_PAT" {
    description = "Personal access token for managing DO infra."
    type        = string
    sensitive   = true
}

variable "ssh_pub_key" {
    description = "SSH public key for droplet access."
    type        = string
    default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDE7YJNCpQyNYicZZFVWMBDszLPI4l+c+f2qSZ1/PUjupgKz4LTQL8pjOQIX3oQpaPTclsATH0xBHD/fzlrLFZQhfqxxIhXEzP6/BG+zDroUR5Zcn4x8yDjOUQ5njMnMJesa3HnV0921aHm01+k9VUEFRQ6AyOqRWhp1ctFXfP4pCPzfC6LpDMatnxBwPM5/ThgD74Csk+3Vpwtsmes4ChALQpFurdKOwOYF9E/WivC7D2xTO03EGMy4+lAWSO9f8jE3IJGLRMxBw4W4F+swuskDLtDgRtBUOU52ikMf1y2MX9iPxb/US6IXlUIWN8+BPMf8GOy3gCCYThgBmNHuX/p me@lurker-ling"
}

variable "region" {
    description = "Default DO region for compute resources."
    type        = string
    default     = "tor1"
}
