# AUY1105 - Grupo 5

## Evaluación N°1 - Infraestructura como Código II

### Integrantes
- Lucía Villalobos
- Eduardo Urbina

## 🎯 Objetivo

Implementar un flujo automatizado de integración continua (CI) para validar infraestructura como código utilizando Terraform, GitHub Actions y herramientas de análisis de calidad y seguridad.

---

# 📑 Índice

1. Requerimiento 1: Gestión Git y Pull Request  
2. Requerimiento 2: Análisis estático con Terraform  
3. Requerimiento 3: Pipeline con GitHub Actions  
4. Requerimiento 4: Políticas de Seguridad y Costes con OPA  
5. Problemas detectados y soluciones aplicadas  
6. Conclusión

---

# 1️⃣ Requerimiento 1: Gestión Git y Pull Request

Se trabajó utilizando Git y GitHub mediante ramas colaborativas, commits versionados y Pull Requests para integrar cambios hacia la rama principal (`main`).

## Evidencias

### Cambios iniciales del repositorio

![Cambios base](imagenes/4 Cambios guardados de archivos base.png)

### Creación del Pull Request

![Creación PR](imagenes/10 Creación PR.png)

### Pull Request aprobado

![PR aprobado](imagenes/20-req3-pr-aprobado.png)

---

# 2️⃣ Requerimiento 2: Análisis estático con Terraform

Se utilizó Terraform para definir infraestructura como código y TFLint para validar buenas prácticas, estructura y sintaxis del código.

Este análisis permite detectar errores tempranos antes del despliegue.

---

# 3️⃣ Requerimiento 3: Pipeline con GitHub Actions

Se implementó un pipeline CI automatizado en GitHub Actions, activado al crear Pull Request hacia la rama principal.

El flujo ejecuta:

- Análisis estático con **TFLint**
- Análisis de seguridad con **Checkov**
- Validación de Terraform con `terraform validate`

## Evidencias

### Configuración del pipeline YAML

![Pipeline YAML](imagenes/7 req3-configuracion-pipeline.yml.png)

### Configuración de Checkov

![Checkov](imagenes/15 req3-configuracion-checkov.png)

### Ejecución exitosa del pipeline

![Pipeline exitoso](imagenes/18 req3-pipeline-PR-ejecucion-exitosa.png)

### Pull Request cerrado correctamente

![PR cerrado](imagenes/19 PR Cerrado.png)

---

# 4️⃣ Requerimiento 4: Políticas de Seguridad y Costes con OPA

Se desarrolló un segundo flujo automatizado incorporando **OPA (Open Policy Agent)** para validar reglas personalizadas sobre Terraform.

OPA permite aplicar políticas corporativas antes de aprobar cambios de infraestructura.

Ejemplo:

- Tipos de instancia permitidos
- Restricciones de costos
- Validaciones de seguridad

## Evidencias (Eduardo)

> Agregar aquí imágenes del requerimiento 4:

```md
![OPA Success](imagenes/req4-opa-success.png)
![Policy Rego](imagenes/req4-policy-rego.png)
![Workflow Req4](imagenes/req4-workflow.png)
