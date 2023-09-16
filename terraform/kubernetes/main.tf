terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.14"
    }
    sops = {
      source = "carlpett/sops"
      version = "~> 1.0"
    }
  }
}

provider "proxmox" {
  # References our vars.tf file to plug in the api_url 
  pm_api_url = var.api_url
  # References our secrets.tfvars file to plug in our token_id
  pm_api_token_id = var.token_id
  # References our secrets.tfvars to plug in our token_secret 
  pm_api_token_secret = var.token_secret
  # Default to `true` unless you have TLS working within your pve setup 
  pm_tls_insecure = true
}

# Creates a proxmox_vm_qemu entity named blog_demo_test
resource "proxmox_vm_qemu" "blog_demo_test" {
  name = "kube-${count.index + 1}" # count.index starts at 0
  #name = "test-vm-01"
  count = 3 # Establishes how many instances will be created 
  target_node = var.proxmox_host

  # References our vars.tf file to plug in our template name
  clone = var.template_name
  # Creates a full clone, rather than linked clone 
  # https://pve.proxmox.com/wiki/VM_Templates_and_Clones
  full_clone  = "true"

  # VM Settings. `agent = 1` enables qemu-guest-agent
  vmid = "20${count.index + 1}"
  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 4096
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"

  disk {
    slot = 0
    size = "32G"
    type = "scsi"
    storage = "pool0" # Name of storage local to the host you are spinning the VM up on
    # Enables SSD emulation
    ssd = 1
    # Enables thin-provisioning
    discard = "on"
    #iothread = 1
  }

  network {
    model = "virtio"
    bridge = var.nic_name
    #tag = var.vlan_num # This tag can be left off if you are not taking advantage of VLANs
  }

  ipconfig0 = "ip=192.168.10.12${count.index + 1}/24,gw=192.168.10.1"

  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  #provisioner "local-exec" {
    # Provisioner commands can be run here.
    # We will use provisioner functionality to kick off ansible
    # playbooks in the future
    #command = "touch /home/tcude/test.txt"
  #}
}