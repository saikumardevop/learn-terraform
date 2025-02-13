terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
resource "null_resource" "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key} - ${each.value}"
    //command = "echo ${length(var.fruits)}"
  }

}

resource "null_resource" "fruits1" {

  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key} - ${each.value["count"]}"
    //command = "echo ${length(var.fruits)}"
  }
}

variable "fruits1" {
  default = {
    apple = {
      name  = "apple"
      count = 10
    }
    orange = {
      name  = "orange"
      count = 200
    }
    banana = {
      name  = "banana"
      count = 100
    }
  }
}

variable "fruits" {
  default = {
    apple = 10
    orange = 200
    banana = 100
  }
}