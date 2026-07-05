Reflection

1. When is map + for_each safer than count?

for_each is safer when I need each resource to have a stable identity. Since it uses keys (like web1, web2), Terraform tracks each instance individually, so nothing gets mixed up if I add or remove items.

count is more fragile because it depends on index numbers.


2. What happens if you remove a middle item in a list using count?

If I remove something from the middle, all the indexes shift. That means Terraform might destroy or recreate the wrong resources because everything is based on position, not identity.


3. Besides depends_on, how else can order be controlled?

Terraform usually figures out order automatically when one resource references another (like using aws_subnet.main.id).

Also, modules and data sources can create implicit dependencies without needing depends_on.
