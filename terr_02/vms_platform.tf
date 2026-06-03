# variable "vm_db_cores" {
#   type        = number
#   default     = "2"
#   description = "CPU for VM"
# }

# variable "vm_db_memory" {
#   type        = number
#   default     = "2"
#   description = "RAM for VM"
# }

# variable "vm_db_core_fraction" {
#   type        = number
#   default     = "20"
#   description = "core_fraction for VM (Value 20, 50, 100)"
# }

variable "vm_db_name" {
  type        = string
  default     = "develop-platform-db"
  description = "name VM"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "platform id for VM"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "zone for VM DB"
}

variable "db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "db_vpc_name" {
  type        = string
  default     = "database"
  description = "VPC network & subnet name"
}