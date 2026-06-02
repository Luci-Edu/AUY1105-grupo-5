# AUY1105 - Grupo 5

# Evaluación Parcial N°2 – Infraestructura como Código II

## Integrantes

* Lucía Villalobos
* Eduardo Urbina

---

# Objetivo

Desarrollar una solución de Infraestructura como Código utilizando Terraform, aplicando buenas prácticas de modularización, reutilización de código, control de versiones y trabajo colaborativo mediante Git y GitHub.

La solución considera la construcción de módulos reutilizables para la creación de infraestructura en AWS, permitiendo su integración desde un repositorio principal.

---

# Arquitectura de la Solución

La solución fue desarrollada utilizando una arquitectura modular compuesta por tres módulos Terraform independientes:

| Módulo | Función                                                                           |
| ------ | --------------------------------------------------------------------------------- |
| VPC    | Creación de VPC, subredes públicas y privadas, Internet Gateway y tablas de rutas |
| EC2    | Creación de instancias EC2 y Security Groups configurables                        |
| S3     | Creación de buckets S3 con versionado configurable                                |

Cada módulo fue desarrollado en un repositorio independiente para facilitar la reutilización, mantenimiento y control de versiones.

---

# Repositorios Utilizados

## Módulo VPC

Repositorio:

https://github.com/Luci-Edu/terraform-aws-vpc-auy1105-grupo-5

Funcionalidades:

* Creación de VPC
* Creación de subredes públicas
* Creación de subredes privadas
* Creación de Internet Gateway
* Asociación de tablas de rutas
* Outputs reutilizables

Versión publicada:

* v1.0.0

---

## Módulo EC2

Repositorio:

https://github.com/Luci-Edu/terraform-aws-ec2-auy1105-grupo-5

Funcionalidades:

* Creación de instancias EC2
* Security Groups dinámicos
* Variables parametrizables
* Outputs reutilizables

Versiones publicadas:

* v0.1.0
* v1.0.0

---

## Módulo S3

Repositorio:

https://github.com/Luci-Edu/terraform-aws-s3-auy1105-grupo-5

Funcionalidades:

* Creación de buckets S3
* Versionado configurable
* Gestión de etiquetas
* Outputs reutilizables

Versiones publicadas:

* v0.1.0
* v1.0.0

---

# Trabajo Colaborativo

Para el desarrollo de la evaluación se utilizó GitHub como plataforma de colaboración.

Las actividades realizadas incluyeron:

* Creación de ramas de trabajo.
* Desarrollo independiente de módulos.
* Creación de Pull Requests.
* Revisión cruzada de código.
* Aprobación de cambios.
* Integración a rama principal.
* Control de versiones mediante Tags.

---

# Validación de los Módulos

Cada módulo fue validado utilizando Terraform.

Comandos utilizados:

```bash
terraform fmt
terraform init
terraform validate
```

Resultados obtenidos:

* Código formateado correctamente.
* Dependencias descargadas exitosamente.
* Configuración validada sin errores.
* Módulos listos para reutilización.

---

# Versionado Semántico

Se aplicó versionado semántico siguiendo el estándar:

MAJOR.MINOR.PATCH

Versiones utilizadas:

* v0.1.0 → Primera versión funcional.
* v1.0.0 → Versión estable lista para producción académica.

Los tags fueron publicados en GitHub para cada módulo.

---

# Evidencias

Las evidencias del desarrollo se encuentran almacenadas en la carpeta:

```text
Evidencias/
```

Incluyendo:

* Creación de repositorios.
* Pull Requests.
* Revisiones de código.
* Terraform Init.
* Terraform Validate.
* Commits.
* Push a GitHub.
* Creación de Tags.
* Publicación de versiones.

---

# Conclusiones

La evaluación permitió aplicar conceptos fundamentales de Infraestructura como Código mediante Terraform, utilizando una estrategia modular orientada a la reutilización y mantenibilidad del código.

Además, se reforzó el uso de Git y GitHub para trabajo colaborativo, integración de cambios y control de versiones, aplicando prácticas similares a las utilizadas en entornos profesionales de desarrollo e infraestructura cloud.

La solución obtenida cumple con los requisitos planteados para la evaluación, entregando módulos reutilizables, documentados y versionados para la provisión de infraestructura en AWS.
