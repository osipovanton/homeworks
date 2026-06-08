//
// Create a new Compute Disk and put it to the specific Placement Group.
//
resource "yandex_compute_disk" "my_vm" {
    count = 3
  name = "my_disk-${count.index}"
  size = 1 // Non-replicated SSD disk size must be divisible by 93G
  type = "network-hdd"
  zone = "ru-central1-a"

  # disk_placement_policy {
  #   disk_placement_group_id = yandex_compute_disk_placement_group.my_pg.id
  # }
}

# resource "yandex_compute_disk_placement_group" "my_pg" {
#   zone = "ru-central1-a"
# }

resource "yandex_compute_instance" "vm-storage" {
# depends_on = [ yandex_compute_instance.vm-db ]
# count = 2

  name        = "storage"
  hostname = "storage"
  platform_id = var.vm_web_platform_id

resources {
    cores         = var.vms_resources.web.cores
    memory        = var.vms_resources.web.memory
    core_fraction = var.vms_resources.web.core_fraction
  }
  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.my_vm[*].id
    content {
      disk_id = secondary_disk.value
    }
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.sheduling_policy
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    security_group_ids = var.sg_id
  }
}
