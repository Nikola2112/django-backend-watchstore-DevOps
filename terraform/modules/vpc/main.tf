resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
}

output "vpc_id" {
  value = aws_vpc.this.id
}
