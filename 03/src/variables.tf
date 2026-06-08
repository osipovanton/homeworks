###cloud vars
# variable "token" {
#   type        = string
#   description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
# }

variable "cloud_id" {
  type        = string
  default = "b1g0srucfmvcvk9m3jk4"
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

variable "compute_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "compute image for VM"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "vm_web_platform_id" {
  type = string
  default = "standard-v3"
  description = "platform id for VM"
}

variable "vms_resources" {
  type = map(map(number)) 
  default = {
  web={
    cores=2
    memory=1
    core_fraction=20
      }
    }
}

variable "sheduling_policy" {
  type = string
  default = "true"
  description = "Прерываемая ВМ"
}

variable "sg_id" {
  type = set(string)
  default = ["enpcp09ob3lk9g9jo2to","enptuuk1s49pl9netmjc"]
  description = "ID SG"
}