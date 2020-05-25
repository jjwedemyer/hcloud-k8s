output "master_ipv4" {
  description = "Map of private ipv4 to public ipv4 for masters"
  value       = ["${hcloud_server.master.*.ipv4_address}"]
}

output "worker_ipv4" {
  description = "Map of private ipv4 to public ipv4 for workers"
  value       = ["${hcloud_server.worker.*.ipv4_address}"]
}

output "floating_ipv4" {
  description = "Map of floating ipv4"
  value       = var.use_my_ip > 0 ? [data.hcloud_floating_ip.lbipv4.*.ip_address] : [hcloud_floating_ip.lbipv4.*.ip_address]
}

output "my_floating_ip" {
  value = var.use_my_ip
}
