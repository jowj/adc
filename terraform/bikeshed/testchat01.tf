resource "proxmox_vm_qemu" "testchat01" {
    name = "testchat01" 
    target_node = "exgod"
    clone = var.template_name
    # basic VM settings here. agent refers to guest agent
    agent = 1
    os_type = "debian"
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 2048
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"
    ciuser    = "alice"
    sshkeys  = <<-EOT
            ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPAZhFDzl1lbhWJ7MiTV3+Z1EY8M5b4cH/+ju4uo1d91 admin@home.jowj.net
        EOT    

    # This is our OS disk    
    disk {
        slot = 0
        # set disk size here. leave it small for testing because expanding the disk takes time.
        # You can't actually set this to anything, it doesn't seem? I'm not sure why. if you clone from a template you ALWAYS get that templates size, and any changes made are not seen on the clone vm. 
        # Maybe a function of the kind of disk that was created?
        size = "32G"
        type = "scsi"
        storage = "workload_data"
        iothread = 0
    }
    # This is our data disk; we're just adding the data disk capaccity to LVM, so its maybe dumb? but that's what i'm doing for now.
    disk {
        slot = 1
        size = "240G"
        type = "scsi"
        storage = "workload_data"
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


