variable "each_vm" {
  type = list(object({
    vm_name     = string
    cpu         = number
    ram         = number
    disk_volume = number
  }))
  
  default = [
    {
      vm_name     = "main"
      cpu         = 4
      ram         = 8
      disk_volume = 50
    },
    {
      vm_name     = "replica"
      cpu         = 2
      ram         = 4
      disk_volume = 20
    }
  ]
}

locals {
  each_vm_map = { for vm in var.each_vm : vm.vm_name => vm }
  ssh_key     = file("~/.ssh/id_ed25519.pub")
}

resource "yandex_compute_instance" "db" {
  for_each = local.each_vm_map
  name = each.value.vm_name
  hostname = each.value.vm_name
  platform_id = var.default_platform_id
  resources {
    cores  = each.value.cpu
    memory = each.value.ram
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = each.value.disk_volume
    }
  }
  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    security_group_ids = [yandex_vpc_security_group.example.id]
    nat                = var.default_nat
  }
  metadata = {
    ssh-keys = "ubuntu:${local.ssh_key}"
  }
}
