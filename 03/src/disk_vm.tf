resource "yandex_compute_disk" "storage_disk" {
  count = var.storage_disk_count
  name  = "storage-disk-${count.index + 1}"
  size  = var.storage_disk_size
  type  = var.storage_disk_type
  zone  = var.default_zone
}

resource "yandex_compute_instance" "storage" {
  name        = "storage"
  hostname    = "storage"
  platform_id = var.default_platform_id
  resources {
    cores  = var.storage_cores
    memory = var.storage_memory
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = var.storage_boot_disk_size
    }
  }
  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    security_group_ids = [yandex_vpc_security_group.example.id]
    nat                = var.default_nat
  }
  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }
  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.storage_disk[*].id
    content {
      disk_id = secondary_disk.value
    }
  }
} 