output "instancia_ip_publica" {
  value       = module.compute.instance_ip
  description = "La direccion IP publica de la maquina EC2"
}

output "vpc_id" {
  value       = module.network.vpc_id
  description = "ID de la VPC creada"
}

output "bucket_name" {
  value       = module.storage.bucket_name
  description = "Nombre del bucket S3 creado"
}
