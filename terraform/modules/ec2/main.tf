variable "subnet_id" {}

resource "aws_instance" "this" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
}
