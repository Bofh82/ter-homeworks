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

# Имя ВМ
variable "vm_web_name" {
  type        = string
  default     = "vm-platform"
  description = "Имя виртуальной машины"
}

# Платформа
variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "ID платформы ВМ"
}

# Количество ядер CPU
variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Количество vCPU"
}

# Объём RAM (в ГБ)
variable "vm_web_memory" {
  type        = number
  default     = 2
  description = "Объём оперативной памяти (ГБ)"
}

# Доля CPU (20, 50, 100 для standard-v3)
variable "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "Гарантированная доля vCPU (%)"
}

# ID образа ОС (Ubuntu 20.04)
variable "vm_web_image_id" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ID образа для загрузки (Ubuntu 20.04)"
}

# Включение NAT для доступа в интернет
variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Включить NAT для публичного доступа"
}

# Имя ВМ
variable "vm_db_name" {
  type        = string
  default     = "vm-platform-db"
  description = "Имя виртуальной машины"
}

# Платформа
variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "ID платформы ВМ"
}

# Количество ядер CPU
variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "Количество vCPU"
}

# Объём RAM (в ГБ)
variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Объём оперативной памяти (ГБ)"
}

# Доля CPU (20, 50, 100 для standard-v3)
variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "Гарантированная доля vCPU (%)"
}

# ID образа ОС (Ubuntu 20.04)
variable "vm_db_image_id" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ID образа для загрузки (Ubuntu 20.04)"
}

# Включение NAT для доступа в интернет
variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "Включить NAT для публичного доступа"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}