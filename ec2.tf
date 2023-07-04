resource "aws_instance" "your-wish" {
    ami = "ami-012b9156f755804f5"
    # from instance_type map instance will be selected based on the current workspace
    instance_type = lookup(var.instance_type, terraform.workspace)
}