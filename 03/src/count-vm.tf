//
// Create a new Compute Instance
//
resource "yandex_compute_instance" "vm-web" {
depends_on = [ yandex_compute_instance.vm-db ]
count = 2

  name        = "web-${count.index}"
  hostname = "web-${count.index}"
  platform_id = var.vm_web_platform_id

resources {
    cores         = var.vms_resources.web.cores
    memory        = var.vms_resources.web.memory
    core_fraction = var.vms_resources.web.core_fraction
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