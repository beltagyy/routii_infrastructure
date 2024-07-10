resource "aws_db_instance" "db" {
  allocated_storage = 20
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  engine_version    = "8.0.37"
  license_model     = "general-public-license"
  db_name           = var.db_name
  username          = var.username
  password          = var.password
  # parameter_group_name = "default.mysql5.7"
}
