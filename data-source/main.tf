data "aws_security_group" "selected" {
  name = "launch-wizard-1"
}

# output "security_group_id" {
#   value = coalesce(data.aws_security_group.selected.id)
# }

# data "aws_security_group" "single" {
#  name = "launch-wizard-1"
#  }

data"aws_security_group" "single" {
   count = length(data.aws_security_group.single)
   id = data.aws_security_group.single[count.index]
 }

# output "launch-wizard-1" {
#   value = data.aws_security_group.single
# }

output "single" {
  value = data.aws_security_group.selected
}
