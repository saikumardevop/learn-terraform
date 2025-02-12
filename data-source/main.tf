//data "aws_security_group" "selected" {
//  name = "launch-wizard-1"
//}
//
//output "security_group_id" {
//  value = coalesce(data.aws_security_group.selected.id)
//}

data "aws_security_group" "selected" {}

output "launch-wizard-1" {
  value = data.aws_security_group.selected
}
