data "aws_security_groups" "selected" {}

output "all_sg" {
   value = data.aws_security_groups.selected
}

# data "aws_security_group" "single" {
#  name = "launch-wizard-1"
#  }

//data"aws_security_group" "single" {
 //  count = length(data.aws_security_group.selected)
//   id = data.aws_security_group.single[count.index]
 }

# output "launch-wizard-1" {
#   value = data.aws_security_group.single
# }

//output "single" {
//  value = data.aws_security_group.selected
//}


