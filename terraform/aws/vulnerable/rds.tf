resource "aws_rds_cluster" "vulnerable" {
  cluster_identifier = "vulnerable"
  engine             = "postgres"
  engine_version     = "11.22"

  allocated_storage       = 10
  backup_retention_period = 0
  master_username           = "foo"
  master_password           = "bar"

  tags = {
    Terraform = "true"
  }
}
