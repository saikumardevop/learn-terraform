data "aws_security_groups" "selected" {}

output "all_sg" {
   value = data.aws_security_groups.selected
}

data "aws_security_groups" "test" {}

data "aws_security_group" "single" {
  count = length(data.aws_security_groups.test.ids)
  ids = data.aws_security_groups.test.ids[count.index]
}

output "allllllll" {
  value = "data.aws_security_groups.test"
}