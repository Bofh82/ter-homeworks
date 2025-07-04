# cloud vars
variable "cloud_id" {
  default     = "b1gd6desdu3mbt7gavsj"
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  default     = "b1g53g7fu8i25j6196gn"
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

# ssh vars
variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKQ3ek4XRFwzE61vA2YqkfzLmvxrrU9dbWXQB5W3cnI+ rodionov_s@inbox.ru"
  description = "ssh-keygen -t ed25519"
}

variable "vms_resources" {
  description = "VM resources configuration for web and db VMs"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
}

variable "metadata" {
  description = "Common metadata for all VMs"
  type        = map(string)
}
