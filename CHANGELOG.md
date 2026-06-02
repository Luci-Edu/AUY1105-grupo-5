# CHANGELOG

## [v1.0.0] - 2026-06-01
### Added
- Integracion de modulo VPC: terraform-aws-vpc-auy1105-grupo-5
- Integracion de modulo EC2: terraform-aws-ec2-auy1105-grupo-5
- Integracion de modulo S3: terraform-aws-s3-auy1105-grupo-5
- Refactorizacion de terraform/main.tf usando modulos desacoplados
- Actualizacion de outputs.tf para referenciar outputs de modulos
- Pipeline CI/CD validando los modulos integrados

### Changed
- terraform/main.tf refactorizado de recursos directos a modulos reutilizables
- outputs.tf actualizado para usar module.compute, module.network, module.storage
- Eliminacion de provider.tf y version.tf duplicados

## [v0.1.0] - 2026-06-01
### Added
- Estructura inicial Evaluacion Parcial 2
- Repositorios de modulos creados en organizacion Luci-Edu
- Pull Requests con revision cruzada entre integrantes
