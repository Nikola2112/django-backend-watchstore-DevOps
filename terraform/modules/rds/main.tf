variable "subnet_ids" {}

resource "aws_db_instance" "this" {
  allocated_storage    = 20
  engine               = "postgres"
  instance_class       = "db.t2.micro"
  name                 = "mydatabase"
  username             = "admin"
  password             = "password"
  subnet_group_name    = aws_db_subnet_group.this.name
}

resource "aws_db_subnet_group" "this" {
  name       = "my-db"
  subnet_ids = var.subnet_ids
}
