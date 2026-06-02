# Salidas publicas de la raiz del proyecto
output "instancia_ip_publica" {
  value       = aws_instance.vm.public_ip
  description = "La direccion IP publica de la maquina EC2"
}
