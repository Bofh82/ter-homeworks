output "instances_info" {
  description = "Instance name, external IP, and FQDN for each VM"
  value = {
    platform = {
      instance_name = yandex_compute_instance.platform.name
      external_ip   = yandex_compute_instance.platform.network_interface[0].nat_ip_address
      fqdn          = yandex_compute_instance.platform.fqdn
    }
    platform_db = {
      instance_name = yandex_compute_instance.platform-db.name
      external_ip   = yandex_compute_instance.platform-db.network_interface[0].nat_ip_address
      fqdn          = yandex_compute_instance.platform-db.fqdn
    }
  }
}
