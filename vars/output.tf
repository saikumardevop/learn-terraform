# To print in shell script we use echo , following is the syntax in shell
# echo $sample_string

output "sample_string" {
    value = var.sample_string
}

## In above case we are printing just variable , If variable is a combination of some strings then following is the syntax.${} is mandatory if we include the variable inside a string
output "sample_string1" {
    value = " value of sample_string = ${var.sample_string}"
}

## Value from list
# Second value in list
output "simple_list_2" {
    value = " var.sample_list_[1]"
}

# Print number1 in simple_dict
output "sample_dict_num1" {
    value = var.sample_dict["boolean"]
}

output "sample_dict_bool" {
    value = var.sample_dict["boolean"]
}

output "env" {
    value = var.env
}

output "auto_num1" {
    value = var.auto_num1
}

output "sample1" {
    value = var.sample1
}