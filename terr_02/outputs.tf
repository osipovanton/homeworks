output "test" {

  value = [
    { vm1 = [yandex_compute_instance.platform.name, yandex_compute_instance.platform.network_interface[0].nat_ip_address] },
    { vm2 = [yandex_compute_instance.vms_platform.name, yandex_compute_instance.vms_platform.network_interface[0].nat_ip_address] }

  ]
}