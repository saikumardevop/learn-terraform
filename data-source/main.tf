data "aws_security_group" "selected" {
  name = var."launch-wizard-1"
}

output "security_group_id" {
  value = data.aws_security_group.selected
}