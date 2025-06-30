vms_resources = {
  web = {
    cores         = 2
    memory        = 2
    core_fraction = 5
    hdd_size      = 10
    hdd_type      = "network-hdd"
  }
  db = {
    cores         = 2
    memory        = 4
    core_fraction = 20
    hdd_size      = 10
    hdd_type      = "network-ssd"
  }
}

metadata = {
  serial-port-enable = 1
  ssh-keys           = "ubuntu:ssh-ed25519 AAAAC..."
} 