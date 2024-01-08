provider "proxmox" {
    # url is the hostname (FQDN if you have one) for the proxmox host you'd like to connect to to issue the commands.
    pm_api_url = "https://192.168.1.230:8006/api2/json"
    pm_api_token_id = var.PM_API_TOKEN_ID
    pm_api_token_secret = var.PM_API_TOKEN_SECRET
    pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "high-sea" {
    name = "high-sea" 
    target_node = var.high-sea-host
    clone = var.template_name
    # basic VM settings here. agent refers to guest agent
    agent = 1
    os_type = "debian"
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"

    # This is our OS disk    
    disk {
        slot = 0
        # set disk size here. leave it small for testing because expanding the disk takes time.
        # You can't actually set this to anything, it doesn't seem? I'm not sure why. if you clone from a template you ALWAYS get that templates size, and any changes made are not seen on the clone vm. 
        # Maybe a function of the kind of disk that was created?
        size = "32G"
        type = "scsi"
        storage = "sainthood-cifs"
        iothread = 0
    }
    # This is our data disk; we're just adding the data disk capaccity to LVM, so its maybe dumb? but that's what i'm doing for now.
    disk {
        slot = 1
        size = "240G"
        type = "scsi"
        storage = "sainthood-cifs"
        iothread = 0
    }    

    # if you want two NICs, just copy this whole network section and duplicate it
    network {
        model = "virtio"
        bridge = "vmbr0"
    }
    # not sure exactly what this is for. presumably something about MAC addresses and ignore network changes during the life of the VM
    lifecycle {
        ignore_changes = [
            network,
        ]
    }
    
    # sshkeys set using variables. the variable contains the text of the key.
}

# Configure DO DNS after VM is build. A record to point to machine?
# See records_home.jowj.net.tf file in do_domains.


