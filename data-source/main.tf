data "aws_security_group" "selected" {
  name = "launch-wizard-1"
}

output "security_group_id" {
  value = data.aws_security_group.selected
}

//data "aws_security_group" "selected" {}
//
//data "aws_security_group" "single" {
//  count = length(data.aws_security_group.selected.ids)
//  id = data.aws_security_group.selected.ids[count.index]
//}
//
//output "launch-wizard-1-sg" {
//  value = data.aws_security_group.selected
//}
//
//output "single" {
//  value = data.aws_security_group.single
//}