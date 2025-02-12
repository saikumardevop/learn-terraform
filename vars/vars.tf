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