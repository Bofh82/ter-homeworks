data "template_file" "ansible_inventory" {
  template = file("${path.module}/ansible.tftpl")
  vars = {
    webservers = jsonencode([
      for inst in yandex_compute_instance.web : {
        name         = inst.name
        ansible_host = inst.network_interface[0].nat_ip_address
        fqdn         = inst.fqdn
        # fqdn         = "${inst.hostname}.${replace(inst.zone_id, "-", ".")}.internal"
      }
    ])
    databases = jsonencode([
      for inst in yandex_compute_instance.db : {
        name         = inst.name
        ansible_host = inst.network_interface[0].nat_ip_address
        fqdn         = inst.fqdn
        # fqdn         = "${inst.hostname}.${replace(inst.zone_id, "-", ".")}.internal"
      }
    ])
    storage_group = jsonencode([
      {
        name         = yandex_compute_instance.storage.name
        ansible_host = yandex_compute_instance.storage.network_interface[0].nat_ip_address
        fqdn         = yandex_compute_instance.storage.fqdn
        #fqdn         = "${yandex_compute_instance.storage.hostname}.${replace(yandex_compute_instance.storage.zone_id, "-", ".")}.internal"
      }
    ])
  }
}

resource "local_file" "ansible_inventory" {
  content  = data.template_file.ansible_inventory.rendered
  filename = "${path.module}/inventory.ini"
} 