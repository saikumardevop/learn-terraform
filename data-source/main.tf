//data "aws_security_group" "selected" {
//  name = "launch-wizard-1"
//}

//output "security_group_id" {
//  value = coalesce(data.aws_security_group.selected)
//}

data "aws_security_group" "selected" {}

data "aws_security_group" "single" {
  count = length(data.aws_security_group.selected)
  id = data.aws_security_group.selected[count.index]
}

output "launch-wizard-1-sg" {
  value = data.aws_security_group.selected
}

output "single" {
  value = data.aws_security_group.single
}