output "vm_id" {
  value = azurerm_linux_virtual_machine.linuxvm.id
}

output "vm_ip" {
  value = azurerm_linux_virtual_machine.linuxvm.public_ip_address
}

output "tls_private_key" {
  sensitive = true
  value     = tls_private_key.ssh.private_key_pem
}

// output "tls_public_key" {
//   sensitive = true
//   value     = tls_private_key.ssh.public_key_openssh
// }

output "password-vm" {
  sensitive = true
  value     = random_password.password.result
}