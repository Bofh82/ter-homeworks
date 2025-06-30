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
#variable "vm_web_cores" {
#  type        = number
#  default     = 2
#  description = "Количество vCPU"
#}

# Объём RAM (в ГБ)
#variable "vm_web_memory" {
#  type        = number
#  default     = 2
#  description = "Объём оперативной памяти (ГБ)"
#}

# Доля CPU (20, 50, 100 для standard-v3)
#variable "vm_web_core_fraction" {
#  type        = number
#  default     = 20
#  description = "Гарантированная доля vCPU (%)"
#}

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
#variable "vm_db_cores" {
#  type        = number
#  default     = 2
#  description = "Количество vCPU"
#}

# Объём RAM (в ГБ)
#variable "vm_db_memory" {
#  type        = number
#  default     = 2
#  description = "Объём оперативной памяти (ГБ)"
#}

# Доля CPU (20, 50, 100 для standard-v3)
#variable "vm_db_core_fraction" {
#  type        = number
#  default     = 20
#  description = "Гарантированная доля vCPU (%)"
#}

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