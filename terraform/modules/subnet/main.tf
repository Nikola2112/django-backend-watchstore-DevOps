variable "vpc_id" {}
variable "cidr_block" {}
variable "public" {}

resource "aws_subnet" "this" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  map_public_ip_on_launch = var.public
}

output "subnet_id" {
  value = aws_subnet.this.id
}
