resource "proxmox_resource_vm" "terraform-example" {
  node = "myproxmox_node"
  name = "terraform-example"
  vm_id = "101"
  cores = "1"
  memory = "512"
  ide_devices {
    number = "2"
    file = "local:iso/Ubuntu-16.03.3-netinstall.iso"
    media = "cdrom"
  }
  ide_devices {
    number = "0"
    file = "local-lvm:32"
    size = "32"
    media = "disk"
  } 
  network_devices {
    number = "0"
    model = "virtio"
    bridge = "vmbr0"
  }
}
