resource "aws_db_instance" "playsdev-db" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "root"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  multi_az             = true
  vpc_security_group_ids = [aws_security_group.playsdev-sg.id]
  db_subnet_group_name   = aws_db_subnet_group.playsdev-db-subnet.name 
}
