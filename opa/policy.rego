package policy

 { ... }` is a partial set rule)

## Fix: Update the policy to modern Rego syntax

Replace `opa/policy.rego` with:

```rego
package policy

import input as tfplan

allowed_types := ["t2.micro", "t3.micro"]

default allow := false

allow if {
  instance_type_ok
}

instance_type_ok if {
  some i
  instance := tfplan.resource_changes[i]
  instance.type == "aws_instance"
  itype := instanceimport input as tfplan

allowed_types := ["t2.micro", "t3.micro"]

default allow := false

allow if {
  instance_type_ok
}

instance_type_ok if {
  some i
  instance := tfplan.resource_changes[i]
  instance.type == "aws_instance"
  itype := instance.change.after.instance_type
  allowed_types[_] == itype
}

# partial set rule must use `contains` in new syntax
deny contains msg if {
  not allow
 .change.after.instance_type
  allowed_types[_] == itype
}

deny contains msg if {
  not allow
  msg := "Tipo de instancia no permitido"
}