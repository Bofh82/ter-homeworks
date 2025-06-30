###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
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
  description = "VPC network&subnet name"
}

# ID образа ОС (Ubuntu 20.04)
variable "default_image_id" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ID образа для загрузки (Ubuntu 20.04)"
}

# Платформа
variable "default_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "ID платформы ВМ"
}

# Включение NAT для доступа в интернет
variable "default_nat" {
  type        = bool
  default     = true
  description = "Включить NAT для публичного доступа"
}

# ВМ web параметры
variable "web_cores" {
  type        = number
  default     = 2
  description = "Количество ядер для web ВМ"
}

variable "web_memory" {
  type        = number
  default     = 2
  description = "Объем памяти (ГБ) для web ВМ"
}

variable "web_disk_size" {
  type        = number
  default     = 10
  description = "Размер диска (ГБ) для web ВМ"
}

# Параметры для storage дисков
variable "storage_disk_count" {
  type        = number
  default     = 3
  description = "Количество дополнительных дисков для storage"
}

variable "storage_disk_size" {
  type        = number
  default     = 1
  description = "Размер дополнительного диска (ГБ) для storage"
}

variable "storage_disk_type" {
  type        = string
  default     = "network-hdd"
  description = "Тип дополнительного диска для storage"
}

# Параметры для storage ВМ
variable "storage_cores" {
  type        = number
  default     = 2
  description = "Количество ядер для storage ВМ"
}

variable "storage_memory" {
  type        = number
  default     = 2
  description = "Объем памяти (ГБ) для storage ВМ"
}

variable "storage_boot_disk_size" {
  type        = number
  default     = 10
  description = "Размер boot-диска (ГБ) для storage ВМ"
}