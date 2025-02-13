data "aws_security_groups" "selected" {}

output "all_sg" {
   value = data.aws_security_groups.selected
}

data "aws_security_groups" "test" {

 }

data"aws_security_group" "single" {
  count = length(data.aws_security_groups.test.ids)
  id = data.aws_security_groups.test[count.index]
 }

output "test" {
  value = data.aws_security_groups.test
}

output "single" {
 value = data.aws_security_group.single

}


