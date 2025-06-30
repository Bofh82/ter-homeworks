locals {
  vm_names = {
    web = "${var.vpc_name}-${var.vm_web_name}-${var.default_zone}"
    db  = "${var.vpc_name}-${var.vm_db_name}-${var.vm_db_zone}"
  }
}
