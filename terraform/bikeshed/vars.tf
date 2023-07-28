variable "proxmox_host" {
    default = "demiurge"
}
variable "template_name" {
    default = "debian-template"
}

variable "PM_API_TOKEN_ID" {
    description = "API Token ID for proxmox management."
    type        = string
    sensitive   = true
}
variable "PM_API_TOKEN_SECRET" {
    description = "Secret for prooxmox management."
    type        = string
    sensitive   = true    
}
