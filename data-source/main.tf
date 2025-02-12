data "aws_security_group" "default" {
  name = "allow-all"
}

output "security_group_id" {
  value = data.aws_security_group.selected
}