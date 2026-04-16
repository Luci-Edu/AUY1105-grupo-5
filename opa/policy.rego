package terraform.analysis

import input as tfplan

# Lista de tamaños permitidos
allowed_types = ["t2.micro", "t3.micro"]

default allow = false

# Regla: Permitir si el tipo de instancia está en la lista
allow {
    instance_type_ok
}

instance_type_ok {
    some i
    instance := tfplan.resource_changes[i]
    instance.type == "aws_instance"
    type := instance.change.after.instance_type
    allowed_types[_] == type
}
