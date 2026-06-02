# Salidas del modulo VPC para ser consumidas externamente
output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID de la VPC creada por el modulo"
}

output "public_subnet_id" {
  value       = aws_subnet.public.id
  description = "ID de la subred publica creada por el modulo"
}
