variable "sample_string" {
    default = "Hello World"
}
## shell scripting equivalent sample_string="Hello World"

variable "sample_number" {
    default = 100
}

# 10.6 is also a number in terraform

variable "sample_boolean" {
    default = true
}

# Booleans are or false

# Booleans and numbers does not need to be quoted, only strings need to be quoted that to be with double quotes. Terraform does support for Single quotes

### Variable Types
# So far we have seen is default variable type

# we have list variable type
variable "sample_list" {
    default = [
        100,
        "hello",
        true,
        123
    ]
}

# Data type inside the list does not matter in terraform

# We have a dictionary (or map), Meaning single variable will have multiple values, & Each value is going to have a sapperate name.

variable "sample_dict" {
    default = {
        number1 = 100
        string1 = "hello"
        number2 = 123
        boolean = true
    }
}

## this is most preffered variable over the list when we declare the data.

variable "env" {}
variable "auto_num1" {}
variable "sample1" {}
