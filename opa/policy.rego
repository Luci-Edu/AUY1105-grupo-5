package policy

import input as tfplan

allowed_types = ["t2.micro", "t3.micro"]

default allow = false

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

deny[msg] {
  not allow
  msg := "Tipo de instancia no permitido"
}