###cloud vars


variable "cloud_id" {
  type        = string
  default     = "b1g0srucfmvcvk9m3jk4"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1gpu08e4sbjpdr6gmm8"
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

variable "compute_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "compute image for VM"
}

# variable "vm_web_cores" {
#   type        = number
#   default     = "2"
#   description = "CPU for VM"
# }

# variable "vm_web_memory" {
#   type        = number
#   default     = "1"
#   description = "RAM for VM"
# }

# variable "vm_web_core_fraction" {
#   type        = number
#   default     = "20"
#   description = "core_fraction for VM (Value 20, 50, 100)"
# }

variable "vms_resources" {
  type = map(map(number)) 
  default = {
  web={
    cores=2
    memory=1
    core_fraction=20
      },
  db= {
    cores=2
    memory=2
    core_fraction=20
  }
  }
}

variable "vm_web_name" {
  type        = string
  default     = "develop-platform-web"
  description = "name VM"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "platform id for VM"
}

###ssh vars

# variable "vms_ssh_root_key" {
#   type        = string
#   default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGWH/ub16VU/MILqf73wBfbge7D9CdhDmmS1mzKJJ1Ec anton-osipov@mail.ru"
#   description = "ssh-keygen -t ed25519"
# }

variable "vms_metadata" {
  type = map(object({
    serial-port-enable = number
    ssh-keys = string
  }))
  default = {
    "ALL-VM" = {
      serial-port-enable = 1
      ssh-keys = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGWH/ub16VU/MILqf73wBfbge7D9CdhDmmS1mzKJJ1Ec anton-osipov@mail.ru"
    }
  }
}