# Variables de entrada para el módulo VPC (Red)
variable "vpc_cidr" {
  type        = string
  description = "Rango de red CIDR primario para la VPC"
  default     = "10.1.0.0/16"

  validation {
    condition     = can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/(16|20|24)$", var.vpc_cidr))
    description = "El CIDR de la VPC debe ser un rango IPv4 valido con mascara /16, /20 o /24."
  }
}

variable "environment" {
  type        = string
  description = "Ambiente de desarrollo"
  default     = "dev"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR para la subred publica"
  default     = "10.1.1.0/24"
}

variable "availability_zone" {
  type        = string
  description = "Zona de disponibilidad en us-east-1"
  default     = "us-east-1a"
}
