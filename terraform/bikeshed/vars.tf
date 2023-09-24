variable "proxmox_host" {
    default = "demiurge"
}

variable "template_name" {
    default = "debian-template-cifs"
}

variable "high-sea-host" {
    default = "seraph"
}

variable "PM_API_TOKEN_ID" {
    description = "API Token ID for proxmox management."
    type        = string
    sensitive   = true
}
variable "PM_API_TOKEN_SECRET" {
    description = "Secret for proxmox management."
    type        = string
    sensitive   = true    
}

variable "DO_PAT" {
    description = "Personal access token for managing DO infra."
    type        = string
    sensitive   = true
}
