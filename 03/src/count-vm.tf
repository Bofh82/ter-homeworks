resource "yandex_compute_instance" "web" {
  count = 2
  name = "web-${count.index + 1}"
  platform_id = var.default_platform_id
  resources {
    cores  = var.web_cores
    memory = var.web_memory
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = var.web_disk_size
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
  depends_on = [yandex_compute_instance.db]
}

