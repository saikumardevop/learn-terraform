resource "null_resource" "fruits" {
  //count = length(var.fruits)

  provisioner "local-exec" {
    //command = "echo Fruits Name - ${var.fruits[count.index]}
    command = "echo ${length(var.fruits)}"
  }
}


variable "fruits" {
  default = {
    apple = 10
    apple = 200
    banana = 100
  }
}