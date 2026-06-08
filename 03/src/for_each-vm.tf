resource "yandex_compute_instance" "vm-db" {
  for_each = {for x in var.each_vm : x.vm_name => x}
  name = each.key
  platform_id = "standard-v3"
  resources {
    cores = each.value.cpu
    memory = each.value.ram
    core_fraction = each.value.core_fraction

  }
  boot_disk {
    initialize_params {
      size = each.value.disk_volume
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    security_group_ids = var.sg_id
  }
  
  metadata = {
    serial-port-enable = 1
    ssh-keys = "ubuntu:$(local.vms_ssh_root_key)"
  }
}

variable "each_vm" {
  type = list(object({
    vm_name = string
    cpu = number
    ram = number
    disk_volume = number
    core_fraction = number
  }))
  default = [ {
    vm_name = "main"
    cpu = 2
    ram = 1
    disk_volume = 5
    core_fraction = 20
  },
  {vm_name = "replica"
  cpu = 2
  ram = 1
  disk_volume = 5
  core_fraction = 20
  } ]
}